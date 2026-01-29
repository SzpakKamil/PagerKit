//
//  PKPagesViewUIKit.swift
//  PagerKit
//
//  Created by Kamil Szpak on 30/09/2025.
//

#if !(os(macOS) || os(watchOS))
import SwiftUI
import UIKit

struct PKPagesViewUIKit: UIViewControllerRepresentable {
    private var pageController: UIPageViewController?
    var customPageIndexBinding: Binding<Int>? = nil
    @State private var defaultPageIndexBinding: Int = 0
    var pageControlStyle: PKPageControlStyle
    let options: PKPageOptions
    let pages: [PKPage]
    
    init(
        pages: [PKPage],
        pageControlStyle: PKPageControlStyle,
        options: PKPageOptions,
        customPageIndexBinding: Binding<Int>?
    ) {
        self.pages = pages
        self.pageControlStyle = pageControlStyle
        self.options = options
        self.customPageIndexBinding = customPageIndexBinding
    }

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    func makeUIViewController(context: Context) -> PKPagesUIViewController {
        let uiViewController = PKPagesUIViewController(
            currentPageIndex: customPageIndexBinding ?? $defaultPageIndexBinding,
            options: options
        )
        updatePageIndicatorStyle(for: uiViewController)
        // Mount initial footer for the current page
        attachOrUpdateFooter(for: uiViewController, coordinator: context.coordinator)
        return uiViewController
    }
    
    func updateUIViewController(_ uiViewController: PKPagesUIViewController, context: Context) {
        // Detect page index change and navigate if needed
        let desiredIndex = customPageIndexBinding?.wrappedValue ?? defaultPageIndexBinding
        if uiViewController.lastValueOfCurrentPageIndex != desiredIndex {
            uiViewController.navigateToPage(desiredIndex, isManualChange: true)
        }
        attachOrUpdateFooter(for: uiViewController, coordinator: context.coordinator)
        // Always refresh constraints/styles for page control and footer
        updatePageIndicatorStyle(for: uiViewController)
        rebuildFooterConstraints(for: uiViewController, coordinator: context.coordinator)
        
        // Update progress if available for current page
        if #available(iOS 17.0, tvOS 17.0, *){
            if let progress = pages[desiredIndex].progress?() as? UIPageControlProgress{
                if let durationProgress = progress as? UIPageControlTimerProgress, durationProgress.preferredDuration > 0{
                    uiViewController.pageControl.progress = durationProgress
                }else{
                    uiViewController.pageControl.progress = progress
                }
            } else {
                uiViewController.pageControl.progress = nil
            }
        }
    }
    
    // MARK: - Footer management
    
    final class Coordinator {
        var currentFooterVC: UIViewController?
        var activeFooterConstraints: [NSLayoutConstraint] = []
    }
    
    private func attachOrUpdateFooter(for uiViewController: PKPagesUIViewController, coordinator: Coordinator) {
        let index = customPageIndexBinding?.wrappedValue ?? defaultPageIndexBinding
        guard pages.indices.contains(index) else {
            // Remove any existing footer if index out of range
            removeFooter(from: uiViewController, coordinator: coordinator)
            return
        }
        let newFooterVC = pages[index].footerViewController
        
        // If the same VC instance is already attached, just rebuild constraints
        if let current = coordinator.currentFooterVC, let new = newFooterVC, current === new {
            rebuildFooterConstraints(for: uiViewController, coordinator: coordinator)
            return
        }
        
        // Otherwise, remove old and attach new
        removeFooter(from: uiViewController, coordinator: coordinator)
        guard let footerVC = newFooterVC else { return }
        
        uiViewController.addChild(footerVC)
        let footerView = footerVC.view!
        footerView.translatesAutoresizingMaskIntoConstraints = false
        uiViewController.view.addSubview(footerView)
        footerVC.didMove(toParent: uiViewController)
        coordinator.currentFooterVC = footerVC
        
        // Build constraints for the newly attached footer
        rebuildFooterConstraints(for: uiViewController, coordinator: coordinator)
    }
    
    private func removeFooter(from uiViewController: PKPagesUIViewController, coordinator: Coordinator) {
        // Deactivate constraints
        NSLayoutConstraint.deactivate(coordinator.activeFooterConstraints)
        coordinator.activeFooterConstraints.removeAll()
        
        // Remove VC/view
        if let footerVC = coordinator.currentFooterVC {
            footerVC.willMove(toParent: nil)
            footerVC.view.removeFromSuperview()
            footerVC.removeFromParent()
            coordinator.currentFooterVC = nil
        }
    }
    
    private func rebuildFooterConstraints(for uiViewController: PKPagesUIViewController, coordinator: Coordinator) {
        guard let footerView = coordinator.currentFooterVC?.view else {
            NSLayoutConstraint.deactivate(coordinator.activeFooterConstraints)
            coordinator.activeFooterConstraints.removeAll()
            return
        }
        let safeArea = uiViewController.view.safeAreaLayoutGuide
        let pageFooterSpacing: CGFloat = pageControlStyle.footerSpacing
        
        // Compute per-edge paddings from style
        let paddings = perEdgePaddings()
        let topPadding = paddings.top
        let bottomPadding = paddings.bottom
        let leadingPadding = paddings.leading
        let trailingPadding = paddings.trailing
        
        // Remove old constraints
        NSLayoutConstraint.deactivate(coordinator.activeFooterConstraints)
        coordinator.activeFooterConstraints.removeAll()
        
        var constraints: [NSLayoutConstraint] = []
        switch pageControlStyle.footerAlignment {
            case .top:
                constraints.append(footerView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: pageFooterSpacing + topPadding))
                constraints.append(footerView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor))
            case .topLeading:
                constraints.append(footerView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: pageFooterSpacing + topPadding))
                constraints.append(footerView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: pageFooterSpacing + leadingPadding))
            case .topTrailing:
                constraints.append(footerView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: pageFooterSpacing + topPadding))
                constraints.append(footerView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -(pageFooterSpacing + trailingPadding)))
            case .leading:
                constraints.append(footerView.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor))
                constraints.append(footerView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: pageFooterSpacing + leadingPadding))
            case .center:
                constraints.append(footerView.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor))
                constraints.append(footerView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor))
            case .trailing:
                constraints.append(footerView.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor))
                constraints.append(footerView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -(pageFooterSpacing + trailingPadding)))
            case .bottomLeading:
                constraints.append(footerView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -(pageFooterSpacing + bottomPadding)))
                constraints.append(footerView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: pageFooterSpacing + leadingPadding))
            case .bottom:
                constraints.append(footerView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -(pageFooterSpacing + bottomPadding)))
                constraints.append(footerView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor))
            default:
                constraints.append(footerView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -(pageFooterSpacing + bottomPadding)))
                constraints.append(footerView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -(pageFooterSpacing + trailingPadding)))
        }
        NSLayoutConstraint.activate(constraints)
        coordinator.activeFooterConstraints = constraints
    }
    
    // MARK: - Page control styling (updated to include padding)
    func updatePageIndicatorStyle(for uiViewController: PKPagesUIViewController) {
        let safeArea = uiViewController.view.safeAreaLayoutGuide
        let pageControl = uiViewController.pageControl
        let pageControlSpacing: CGFloat = pageControlStyle.indicatorSpacing
        
        // Compute per-edge paddings from style
        let paddings = perEdgePaddings()
        let topPadding = paddings.top
        let bottomPadding = paddings.bottom
        let leadingPadding = paddings.leading
        let trailingPadding = paddings.trailing
        
        var pageControlConstraints: [NSLayoutConstraint] = []
        
        switch pageControlStyle.indicatorAlignment {
            case .top:
                pageControlConstraints.append(pageControl.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: pageControlSpacing + topPadding))
                pageControlConstraints.append(pageControl.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor))
            case .topLeading:
                pageControlConstraints.append(pageControl.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: pageControlSpacing + topPadding))
                pageControlConstraints.append(pageControl.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: pageControlSpacing + leadingPadding))
            case .topTrailing:
                pageControlConstraints.append(pageControl.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: pageControlSpacing + topPadding))
                pageControlConstraints.append(pageControl.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -(pageControlSpacing + trailingPadding)))
            case .leading:
                pageControlConstraints.append(pageControl.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor))
                pageControlConstraints.append(pageControl.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: pageControlSpacing + leadingPadding))
            case .center:
                pageControlConstraints.append(pageControl.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor))
                pageControlConstraints.append(pageControl.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor))
            case .trailing:
                pageControlConstraints.append(pageControl.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor))
                pageControlConstraints.append(pageControl.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -(pageControlSpacing + trailingPadding)))
            case .bottomLeading:
                pageControlConstraints.append(pageControl.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -(pageControlSpacing + bottomPadding)))
                pageControlConstraints.append(pageControl.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: pageControlSpacing + leadingPadding))
            case .bottom:
                pageControlConstraints.append(pageControl.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -(pageControlSpacing + bottomPadding)))
                pageControlConstraints.append(pageControl.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor))
            default:
                pageControlConstraints.append(pageControl.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -(pageControlSpacing + bottomPadding)))
                pageControlConstraints.append(pageControl.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -(pageControlSpacing + trailingPadding)))
        }
        
        // Activate new constraints
        NSLayoutConstraint.activate(pageControlConstraints)
        
        if pageControl.isHidden != pageControlStyle.hidden {
            pageControl.isHidden = pageControlStyle.hidden
        }
        if pageControl.hidesForSinglePage != pageControlStyle.hidesForSinglePage {
            pageControl.hidesForSinglePage = pageControlStyle.hidesForSinglePage
        }
        if pageControlStyle.hidesForSinglePage{
            pageControl.isHidden = pages.count < 2
        }
        if pageControl.pageIndicatorTintColor != pageControlStyle.indicatorTintUIColor {
            pageControl.pageIndicatorTintColor = pageControlStyle.indicatorTintUIColor
        }
        
        if pageControl.currentPageIndicatorTintColor != pageControlStyle.currentPageIndicatorTintUIColor {
            pageControl.currentPageIndicatorTintColor = pageControlStyle.currentPageIndicatorTintUIColor
        }
        
        if pageControl.backgroundStyle != pageControlStyle.backgroundStyle.uiKitValue {
            pageControl.backgroundStyle = pageControlStyle.backgroundStyle.uiKitValue
        }
        
        if pageControl.allowsContinuousInteraction != pageControlStyle.allowsContinuousInteraction {
            pageControl.allowsContinuousInteraction = pageControlStyle.allowsContinuousInteraction
        }
        
        if pageControl.preferredIndicatorImage != pageControlStyle.preferredIndicatorImage {
            pageControl.preferredIndicatorImage = pageControlStyle.preferredIndicatorImage
        }
        
        for (page, image) in pageControlStyle.indicatorImage {
            if page >= 0 && page < pageControl.numberOfPages {
                let currentImage = pageControl.indicatorImage(forPage: page)
                if currentImage != image {
                    pageControl.setIndicatorImage(image, forPage: page)
                }
            }
        }
        if #available(iOS 16.0, tvOS 16.0, *) {
            if pageControl.direction != pageControlStyle.getDirection() {
                pageControl.direction = pageControlStyle.getDirection()
            }
            
            if pageControl.preferredCurrentPageIndicatorImage != pageControlStyle.preferredCurrentPageIndicatorImage {
                pageControl.preferredCurrentPageIndicatorImage = pageControlStyle.preferredCurrentPageIndicatorImage
            }
            
            for (page, image) in pageControlStyle.currentIndicatorImage {
                if page >= 0 && page < pageControl.numberOfPages {
                    let currentImage = pageControl.currentPageIndicatorImage(forPage: page)
                    if currentImage != image {
                        pageControl.setCurrentPageIndicatorImage(image, forPage: page)
                    }
                }
            }
        }
    }
    
    // MARK: - Helpers
    private func perEdgePaddings() -> (top: CGFloat, leading: CGFloat, bottom: CGFloat, trailing: CGFloat) {
        let length = pageControlStyle.paddingLeght ?? 0
        guard let edges = pageControlStyle.paddingEdges, length > 0 else {
            return (0, 0, 0, 0)
        }
        var top: CGFloat = 0
        var leading: CGFloat = 0
        var bottom: CGFloat = 0
        var trailing: CGFloat = 0
        
        // Iterate Edge.Set and assign length to corresponding edges
        if edges.contains(.top) { top = length }
        if edges.contains(.bottom) { bottom = length }
        if edges.contains(.leading) { leading = length }
        if edges.contains(.trailing) { trailing = length }
        if edges.contains(.horizontal) {
            leading = max(leading, length)
            trailing = max(trailing, length)
        }
        if edges.contains(.vertical) {
            top = max(top, length)
            bottom = max(bottom, length)
        }
        if edges.contains(.all) {
            top = max(top, length)
            bottom = max(bottom, length)
            leading = max(leading, length)
            trailing = max(trailing, length)
        }
        return (top, leading, bottom, trailing)
    }
}

public struct PKPagesView: View {
    let pages: [PKPage]
    var pageControlStyle: PKPageControlStyle
    var customPageIndexBinding: Binding<Int>? = nil
    let options: PKPageOptions
    @_documentation(visibility: internal)
    public var body: some View {
        PKPagesViewUIKit(
            pages: pages,
            pageControlStyle: pageControlStyle,
            options: options,
            customPageIndexBinding: customPageIndexBinding
        )
    }
    
    public init(pages: [PKPage]) {
        self.pages = pages
        self.options = .init(pages: pages)
        self.pageControlStyle = .init()
        for (index, page) in self.pages.enumerated() {
            if let currentIndicatorImage = page.currentIndicatorImage{
                pageControlStyle.currentIndicatorImage[index] = currentIndicatorImage
            }
            if let indicatorImage = page.indicatorImage{
                pageControlStyle.indicatorImage[index] = indicatorImage
            }
        }
        
    }
    
    public init(@PKPageBuilder pages: () -> [PKPage]) {
        self.pages = pages()
        self.options = .init(pages: pages())
        self.pageControlStyle = .init()
        for (index, page) in self.pages.enumerated() {
            if let currentIndicatorImage = page.currentIndicatorImage{
                pageControlStyle.currentIndicatorImage[index] = currentIndicatorImage
            }
            if let indicatorImage = page.indicatorImage{
                pageControlStyle.indicatorImage[index] = indicatorImage
            }
        }
    }
}

#Preview{
    PKPagesView {
        PKPage{
            Text("dd")
        }
        PKPage{
            Text("dd")
        }
    }
    .pkPageControlIndicatorAlignment(.topTrailing)
    .pkPageControlIndicatorBackgroundStyle(.prominent)
}
#endif
