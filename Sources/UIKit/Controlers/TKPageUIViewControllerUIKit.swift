//
//  TKPageUIViewControllerUIKit.swift
//  TabKit
//
//  Created by Kamil Szpak on 30/09/2025.
//

#if !(os(macOS) || os(watchOS))
import UIKit
import SwiftUI

public class TKPageViewController: UIViewController{
    let index: Int
    let page: TKPage
    
    init(index: Int, page: TKPage) {
        self.index = index
        self.page = page
        super.init(nibName: nil, bundle: nil)
        setupHostingController()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupHostingController() {
        let hostingView = page.hostingViewController.view!
        hostingView.backgroundColor = .clear
        addChild(page.hostingViewController)
        view.addSubview(hostingView)
        hostingView.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = .clear
        view.insetsLayoutMarginsFromSafeArea = false
        
        NSLayoutConstraint.activate([
            hostingView.topAnchor.constraint(equalTo: view.topAnchor),
            hostingView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            hostingView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hostingView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        page.hostingViewController.didMove(toParent: self)

    }
    
    @MainActor
    deinit {
        page.hostingViewController.willMove(toParent: nil)
        page.hostingViewController.view.removeFromSuperview()
        page.hostingViewController.removeFromParent()
    }
    
    
    public override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        page.hostingViewController.view.setNeedsLayout()
        page.hostingViewController.view.layoutIfNeeded()
    }
}

#endif
