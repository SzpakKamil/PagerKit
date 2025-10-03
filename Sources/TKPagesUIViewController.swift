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
    private var isHandlingManualChange = false

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
        print("View Dit load")
        navigateToPage(0, isManualChange: false)
    }

    private func configuratePageControl() {
        pageControl.currentPage = lastValueOfCurrentPageIndex
        pageControl.numberOfPages = pages.count
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.addTarget(self, action: #selector(detectTapGesture), for: .touchUpInside)
        pageControl.addTarget(self, action: #selector(pageControlHandle), for: .valueChanged)
        view.addSubview(pageControl)
    }
    
    public func navigateToPage(_ index: Int, isManualChange: Bool) {
        guard !pages.isEmpty, index >= 0, index < pages.count else { return }
        let targetViewController = pages[index]
        let direction = index > lastValueOfCurrentPageIndex ? UIPageViewController.NavigationDirection.forward : .reverse
        setViewControllers([targetViewController], direction: direction, animated: true, completion: nil)
        let lastIndex = lastValueOfCurrentPageIndex
        DispatchQueue.main.async{
            self.currentPageIndexBinding.wrappedValue = index
            if isManualChange{
                self.options.pageManualChangeIndexFunction?(lastIndex, index)
                self.options.pageManualChangeDirectionFunction?(index, direction)
            }else{
                self.options.pageAutoChangeIndexFunction?(lastIndex, index)
                self.options.pageAutoChangeDirectionFunction?(index, direction)
            }

        }
        lastValueOfCurrentPageIndex = index
        pageControl.currentPage = index

        
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
    }
    
    @objc private func detectTapGesture(sender: UIPageControl){
        isHandlingManualChange = true
    }
    @objc private func pageControlHandle(sender: UIPageControl){
        print("Page Control")
        navigateToPage(sender.currentPage, isManualChange: isHandlingManualChange)
        isHandlingManualChange = false
    }
}


