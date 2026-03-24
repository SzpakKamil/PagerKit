//
//  PKPagesViewUIKitTests.swift
//  PagerKit
//
//  Created by Gemini CLI on 24/03/2026.
//

import SwiftUI
import XCTest
@testable import PagerKit

#if os(iOS) || os(tvOS) || os(visionOS)
class PKPagesViewUIKitTests: XCTestCase {
    
    // MARK: - Helper
    
    @MainActor
    func findPKPagesUIViewController(in controller: UIViewController) -> PKPagesUIViewController? {
        if let pk = controller as? PKPagesUIViewController {
            return pk
        }
        for child in controller.children {
            if let found = findPKPagesUIViewController(in: child) {
                return found
            }
        }
        return nil
    }
    
    @MainActor
    func loadView(_ controller: UIViewController) {
        let window = UIWindow(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
        window.rootViewController = controller
        window.makeKeyAndVisible()
        _ = controller.view
        // Allow runloop to process layout/hierarchy updates
        RunLoop.current.run(until: Date(timeIntervalSinceNow: 0.1))
    }
    
    // MARK: - Tests
    
    @MainActor
    func testMakeUIViewController_SetsUpInitialState() {
        let pages = [PKPage { Text("1") }, PKPage { Text("2") }]
        let view = PKPagesView(pages: pages)
            .pkPageControlIndicatorAlignment(.top)
        
        let hostingVC = UIHostingController(rootView: view)
        loadView(hostingVC)
        
        guard let pkVC = findPKPagesUIViewController(in: hostingVC) else {
            XCTFail("Could not find PKPagesUIViewController")
            return
        }
        
        // Check if options are passed
        XCTAssertEqual(pkVC.pages.count, 2)
    }
    
    @MainActor
    func testFooterIntegration() {
        let pages = [
            PKPage { Text("Page 1") }
                .pkPageFooter { Text("Footer 1") }
        ]
        
        let view = PKPagesView(pages: pages)
            .pkPageControlFooterAlignment(.bottom)
        
        let hostingVC = UIHostingController(rootView: view)
        loadView(hostingVC)
        
        guard let pkVC = findPKPagesUIViewController(in: hostingVC) else {
            XCTFail("Could not find PKPagesUIViewController")
            return
        }
        
        // Wait for potential async layout/updates if any, but makeUIViewController is sync
        // Footer should be added to pkVC.view or as child
        
        let hasFooter = pkVC.children.contains { child in
            // PKPageViewController is the type for pages.
            // Footer is a UIHostingController<AnyView>.
            // We check if the child is NOT a PKPageViewController.
            return !(child is PKPageViewController)
        }
        
        XCTAssertTrue(hasFooter, "Should have a child VC that is the footer (and not a page)")
    }
    
    @MainActor
    func testIndicatorStyleUpdates() {
        let pages = [PKPage { Text("1") }, PKPage { Text("2") }]
        // Set specific styles
        let view = PKPagesView(pages: pages)
            .pkPageControlIndicatorTintColor(.red)
            .pkPageControlIndicatorCurrentIndicatorTintColor(.blue)
            .pkPageControlIndicatorBackgroundStyle(.prominent)
            .pkPageControlIndicatorHidesForSignlePage(false) // Must disable this to allow manual hiding
            .pkPageControlIndicatorHidden(true)
        
        let hostingVC = UIHostingController(rootView: view)
        loadView(hostingVC)
        
        guard let pkVC = findPKPagesUIViewController(in: hostingVC) else {
            XCTFail("Could not find PKPagesUIViewController")
            return
        }
        
        let pc = pkVC.pageControl
        
        // Colors from SwiftUI Color.red/blue map to system colors in UIColor
        XCTAssertEqual(pc.pageIndicatorTintColor, UIColor(Color.red))
        XCTAssertEqual(pc.currentPageIndicatorTintColor, UIColor(Color.blue))
        XCTAssertEqual(pc.backgroundStyle, .prominent)
        XCTAssertTrue(pc.isHidden)
    }
    
    @MainActor
    func testPerEdgePaddings_Logic() {
        // This tests the logic indirectly via constraints logic or just by exercising the code path.
        // To really test `perEdgePaddings` without direct access, we'd rely on `updatePageIndicatorStyle`
        // constructing constraints.
        
        let pages = [PKPage { Text("1") }]
        let view = PKPagesView(pages: pages)
            .pkPageControlPadding(.top, 10)
            .pkPageControlPadding(.horizontal, 20)
        
        let hostingVC = UIHostingController(rootView: view)
        loadView(hostingVC)
        
        // If no crash, it means logic ran. Verification of exact constants in constraints 
        // is hard without identifying *which* constraint is which.
        // But running it covers the code.
    }
    
    @MainActor
    func testFooterAlignmentConstraints() {
        // Exercise different alignments to cover switch cases
        let alignments: [Alignment] = [
            .top, .topLeading, .topTrailing,
            .leading, .center, .trailing,
            .bottomLeading, .bottom, .bottomTrailing
        ]
        
        for alignment in alignments {
            let pages = [
                PKPage { Text("1") }.pkPageFooter { Text("F") }
            ]
            let view = PKPagesView(pages: pages)
                .pkPageControlFooterAlignment(alignment)
            
            let hostingVC = UIHostingController(rootView: view)
            loadView(hostingVC)
            // Just ensure it renders without crashing
        }
    }
    
    @MainActor
    func testIndicatorAlignmentConstraints() {
         let alignments: [Alignment] = [
            .top, .topLeading, .topTrailing,
            .leading, .center, .trailing,
            .bottomLeading, .bottom, .bottomTrailing
        ]
        
        for alignment in alignments {
            let pages = [PKPage { Text("1") }]
            let view = PKPagesView(pages: pages)
                .pkPageControlIndicatorAlignment(alignment)
            
            let hostingVC = UIHostingController(rootView: view)
            loadView(hostingVC)
        }
    }
    
    @MainActor
    func testUpdateUIViewController_Navigation() {
        let pages = [PKPage { Text("1") }, PKPage { Text("2") }]
        let indexBinding = Binding.constant(1) // Start at 0, request 1
        
        // We need a binding that we can change.
        // But here we simulate a state change by creating a view with a different binding value?
        // No, updateUIViewController is called when SwiftUI detects data change.
        
        // Integration test with state is tricky in unit test.
        // But we can check if `makeUIViewController` respects the initial binding.
        
        let view = PKPagesView(pages: pages)
            .pkCurrentPageIndex(index: indexBinding)
        
        let hostingVC = UIHostingController(rootView: view)
        loadView(hostingVC)
        
        guard let pkVC = findPKPagesUIViewController(in: hostingVC) else {
            XCTFail()
            return
        }
        
        // It might take a runloop cycle to update?
        // makeUIViewController sets initial page.
        
        // Wait for async viewDidAppear etc?
        let exp = expectation(description: "Wait")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            exp.fulfill()
        }
        wait(for: [exp], timeout: 1.0)
        
        XCTAssertEqual(pkVC.lastValueOfCurrentPageIndex, 1)
    }
    
    @MainActor
    func testUpdateUIViewController_StateChange() {
        let pages = [PKPage { Text("1") }, PKPage { Text("2") }]
        // Initial: Hidden
        var view = PKPagesView(pages: pages)
            .pkPageControlIndicatorHidden(true)
            .pkPageControlIndicatorHidesForSignlePage(false)
        
        let hostingVC = UIHostingController(rootView: view)
        loadView(hostingVC)
        
        guard let pkVC = findPKPagesUIViewController(in: hostingVC) else {
            XCTFail()
            return
        }
        XCTAssertTrue(pkVC.pageControl.isHidden)
        
        // Update: Visible
        view = PKPagesView(pages: pages)
            .pkPageControlIndicatorHidden(false)
            .pkPageControlIndicatorHidesForSignlePage(false)
        
        hostingVC.rootView = view
        
        // Allow update cycle
        RunLoop.current.run(until: Date(timeIntervalSinceNow: 0.1))
        
        XCTAssertFalse(pkVC.pageControl.isHidden)
    }
}
#endif
