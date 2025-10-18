//
//  PKPagesUIViewControllerUIKit.swift
//  PagerKit
//
//  Created by Kamil Szpak on 30/09/2025.
//

#if !(os(macOS) || os(watchOS))
import SwiftUI
import UIKit

/// A `UIPageViewController` that displays a collection of SwiftUI pages with a page control.
class PKPagesUIViewController: UIPageViewController {
    var currentPageIndexBinding: Binding<Int>
    var lastValueOfCurrentPageIndex: Int
    let pages: [PKPageViewController]
    let options: PKPageOptions
    var pageControl: UIPageControl = UIPageControl()
    private var isHandlingManualChange = false

    init(currentPageIndex: Binding<Int>, options: PKPageOptions) {
        self.currentPageIndexBinding = currentPageIndex
        self.lastValueOfCurrentPageIndex = currentPageIndex.wrappedValue
        self.options = options
        self.pages = options.pages.enumerated().map { PKPageViewController(index: $0.offset, page: $0.element) }
        super.init(transitionStyle: .scroll, navigationOrientation: options.orientation, options: options.options)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self
        self.view.backgroundColor = .clear
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
    
    func navigateToPage(_ index: Int, isManualChange: Bool) {
        guard !pages.isEmpty, index >= 0, index < pages.count else { return }
        let targetViewController = pages[index]
        let direction = index > lastValueOfCurrentPageIndex ? UIPageViewController.NavigationDirection.forward : .reverse
        setViewControllers([targetViewController], direction: direction, animated: true, completion: nil)
        let lastIndex = lastValueOfCurrentPageIndex
        DispatchQueue.main.async{
            self.currentPageIndexBinding.wrappedValue = index
            if isManualChange{
                self.options.pageManualChangeIndexFunction?(lastIndex, index)
                self.options.pageManualChangeDirectionFunction?(index, .caseFor(uiKitValue: direction))
            }else{
                self.options.pageAutoChangeIndexFunction?(lastIndex, index)
                self.options.pageAutoChangeDirectionFunction?(index, .caseFor(uiKitValue: direction))
            }

        }
        lastValueOfCurrentPageIndex = index
        pageControl.currentPage = index
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
#endif
