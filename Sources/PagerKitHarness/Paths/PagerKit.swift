//
//  PagerKit.swift
//  PagerKitHarness
//
//  Created by Kamil Szpak on 12/11/2025.
//

import HarnessKit
import SwiftUI

public enum PagerKitHK: PathProject {
    public static let name = "PagerKit"
    
    public static var folders: [any PathFolder.Type] = [
        Enums.self,
        PKPage.self,
        PKPagesView.self,
    ]
}
