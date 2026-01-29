//
//  TKPagesUIViewController.swift
//  TabKit
//
//  Created by Kamil Szpak on 30/09/2025.
//

import SwiftUI
import UIKit

/// A `UIPageViewController` that displays a collection of SwiftUI pages with a page control.
public class TKPagesUIViewController: UIPageViewController {
    public var currentPageIndexBinding: Binding<Int>
    var lastValueOfCurrentPageIndex: Int
    let pages: [TKPageViewController]
    let options: TKPageOptions
    var pageControl: UIPageControl = UIPageControl()

    init(currentPageIndex: Binding<Int>, options: TKPageOptions) {
        self.currentPageIndexBinding = currentPageIndex
        self.lastValueOfCurrentPageIndex = currentPageIndex.wrappedValue
        self.options = options
        self.pages = options.pages.enumerated().map { TKPageViewController(index: $0.offset, page: $0.element) }
        super.init(transitionStyle: .scroll, navigationOrientation: options.orientation, options: options.options)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self
        configuratePageControl()
        navigateToPage(0)
    }

    private func configuratePageControl() {
        pageControl.currentPage = lastValueOfCurrentPageIndex
        pageControl.numberOfPages = pages.count
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.addTarget(self, action: #selector(pageControlHandle), for: .valueChanged)
        view.addSubview(pageControl)
    }
    
    public func navigateToPage(_ index: Int) {
        guard !pages.isEmpty, index >= 0, index < pages.count else { return }
        let targetViewController = pages[index]
        let direction = index > lastValueOfCurrentPageIndex ? UIPageViewController.NavigationDirection.forward : .reverse

        currentPageIndexBinding.wrappedValue = index
        lastValueOfCurrentPageIndex = index
        pageControl.currentPage = index
        options.pageChangeFunction?(index)
        
        if #available(iOS 17.0, *){
            if let progress = targetViewController.page.progress?() as? UIPageControlProgress{
                if let durationProgress = progress as? UIPageControlTimerProgress, durationProgress.preferredDuration > 0{
                    pageControl.progress = durationProgress
                    return
                }else{
                    pageControl.progress = progress
                    return
                }
            }
            pageControl.progress = nil
        }
        setViewControllers([targetViewController], direction: direction, animated: true, completion: nil)
    }
    
    @objc private func pageControlHandle(sender: UIPageControl){
        navigateToPage(sender.currentPage)
    }
}


