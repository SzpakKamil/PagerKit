//
//  ToUIImage.swift
//  TabKit
//
//  Created by Kamil Szpak on 30/09/2025.
//

#if canImport(UIKit)
import SwiftUI
import UIKit

extension View {
    /// Converts a SwiftUI view to a UIImage that tightly fits the view's content.
    func asUIImage() -> UIImage {
        let controller = UIHostingController(rootView: self)
        controller.view.backgroundColor = .clear
        
        // Calculate the intrinsic size of the view
        let size = controller.view.intrinsicContentSize
        
        // If intrinsic size is invalid, fall back to a reasonable default
        let targetSize = size.isValid ? size : CGSize(width: 300, height: 300)
        
        // Set the view's bounds to the calculated size
        controller.view.bounds = CGRect(origin: .zero, size: targetSize)
        controller.view.sizeToFit()
        
        // Render the view to an image
        let image = controller.view.asUIImage()
        return image
    }
}

extension UIView {
    /// Converts a UIView to a UIImage that matches its bounds using drawHierarchy.
    func asUIImage() -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: bounds.size)
        return renderer.image { ctx in
            drawHierarchy(in: bounds, afterScreenUpdates: true)
        }
    }
}

// Helper to validate CGSize
extension CGSize {
    var isValid: Bool {
        width > 0 && height > 0 && !width.isInfinite && !height.isInfinite
    }
}
#endif
