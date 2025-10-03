//
//  TKPagesView.swift
//  TabKit
//
//  Created by Kamil Szpak on 30/09/2025.
//

import SwiftUI
import UIKit

public struct TKPagesView: UIViewControllerRepresentable {
    private var pageController: UIPageViewController?
    var customPageIndexBinding: Binding<Int>? = nil
    @State private var defaultPageIndexBinding: Int = 0
    var pageControlStyle: TKPageControlStyle = .init()
    let options: TKPageOptions
    let pages: [TKPage]
    
    
    public init(@TKPageBuilder pages: () -> [TKPage]) {
        self.pages = pages()
        self.options = .init(pages: pages())
    }
    public init(pages: [TKPage]) {
        self.pages = pages
        self.options = .init(pages: pages)
    }

    public func makeUIViewController(context: Context) -> TKPagesUIViewController {
        let uiViewController = TKPagesUIViewController(
            currentPageIndex: customPageIndexBinding ?? $defaultPageIndexBinding,
            options: options
        )
        updatePageIndicatorStyle(for: uiViewController)
        return uiViewController
    }
    
    public func updateUIViewController(_ uiViewController: TKPagesUIViewController, context: Context) {
        if uiViewController.lastValueOfCurrentPageIndex != customPageIndexBinding?.wrappedValue ?? defaultPageIndexBinding {
            print("Index Changed In Update")
            uiViewController.navigateToPage(customPageIndexBinding?.wrappedValue ?? defaultPageIndexBinding, isManualChange: true)
        }
        updatePageIndicatorStyle(for: uiViewController)
    }
    
    
    func updatePageIndicatorStyle(for uiViewController: TKPagesUIViewController) {
        let safeArea = uiViewController.view.safeAreaLayoutGuide
        let pageControl = uiViewController.pageControl
        let constant: CGFloat = pageControlStyle.spacing
        var constraints: [NSLayoutConstraint] = []
        
        switch pageControlStyle.alignment {
        case .top:
            constraints.append(pageControl.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: constant))
            constraints.append(pageControl.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor))
        case .topLeading:
            constraints.append(pageControl.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: constant))
            constraints.append(pageControl.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: constant))
        case .topTrailing:
            constraints.append(pageControl.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: constant))
            constraints.append(pageControl.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: constant))
        case .leading:
            constraints.append(pageControl.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor))
            constraints.append(pageControl.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: constant))
        case .center:
            constraints.append(pageControl.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor))
            constraints.append(pageControl.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor, constant: constant))
        case .trailing:
            constraints.append(pageControl.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor))
            constraints.append(pageControl.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -constant))
        case .bottomLeading:
            constraints.append(pageControl.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -constant))
            constraints.append(pageControl.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: constant))
        case .bottom:
            constraints.append(pageControl.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -constant))
            constraints.append(pageControl.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor))
        default:
            constraints.append(pageControl.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -constant))
            constraints.append(pageControl.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -constant))
        }
        
        // Activate new constraints
        NSLayoutConstraint.activate(constraints)
        
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
        
        if pageControl.backgroundStyle != pageControlStyle.backgroundStyle {
            pageControl.backgroundStyle = pageControlStyle.backgroundStyle
        }
        
        if pageControl.allowsContinuousInteraction != pageControlStyle.allowsContinuousInteraction {
            pageControl.allowsContinuousInteraction = pageControlStyle.allowsContinuousInteraction
        }
        
        if pageControl.preferredIndicatorImage != pageControlStyle.preferredIndicatorUIImage {
            pageControl.preferredIndicatorImage = pageControlStyle.preferredIndicatorUIImage
        }
        
        for (page, image) in pageControlStyle.indicatorImage {
            if page >= 0 && page < pageControl.numberOfPages {
                let currentImage = pageControl.indicatorImage(forPage: page)
                if currentImage != image {
                    pageControl.setIndicatorImage(image, forPage: page)
                }
            }
        }
        
        if #available(iOS 16.0, *) {
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
    
}
