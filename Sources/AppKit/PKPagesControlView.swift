//
//  PKPagesControlView.swift
//  PagerKit
//
//  Created by Kamil Szpak on 06/10/2025.
//

import SwiftUI

#if os(macOS) || os(watchOS)
struct PKPagesControlView: View{
    @Environment(\.colorScheme) var colorScheme
    @Binding var currentSelectedElement: Int
    let progress: Double?
    let duration: Double?
    let numberOfElements: Int
    let style: PKPageControlStyle
    
    var invertedPrimary: Color{
        switch style.backgroundStyle {
            case .automatic:
                return .clear
            case .minimal:
                return .clear
            case .prominent:
                #if os(watchOS)
                return .white.opacity(0.25)
                #else
                if colorScheme == .dark{
                    return .white.opacity(0.1)
                }else{
                    return .black.opacity(0.1)
                    
                }
                #endif
        }

    }
    
    var indicies: [Int]{
        switch style.direction{
        case .leftToRight, .natural, .topToBottom:
            return (0..<numberOfElements).sorted()
        default:
            return (0..<numberOfElements).reversed()
        }
    }
    
    // Represents a visible page dot with its index and scale
    struct VisibleItem: Identifiable {
        let id: Int
        let index: Int
        let scale: CGFloat
        init(index: Int, scale: CGFloat) {
            self.id = index
            self.index = index
            self.scale = scale
        }
    }

    // Computes the list of visible indices and their scales based on current index
    // Rules:
    // - Show up to 6 full-size dots centered around current (3 on each side) when possible.
    // - If near edges and there aren't 3 on one side, shift the remainder to the other side.
    // - After those, show up to 2 more neighbors (one further each side) with scales 0.75 and 0.5 respectively when available.
    // - Hide the rest.
    func visibleItems() -> [VisibleItem] {
        guard numberOfElements > 0 else { return [] }

        // Build the canonical index order according to direction
        let ordered = indicies

        // In RTL or bottom-to-top, visual left/right are swapped
        let isReversedDirection: Bool = {
            switch style.direction {
            case .rightToLeft, .bottomToTop:
                return true
            default:
                return false
            }
        }()

        // Map from visual order to logical index
        // Find the position of currentSelectedElement in ordered array
        guard let currentPos = ordered.firstIndex(of: currentSelectedElement) else {
            // Fallback: show current only
            return [VisibleItem(index: currentSelectedElement, scale: 1.0)]
        }

        // Determine how many full-size neighbors we can show to the left and right
        let desiredLeft = 5
        let desiredRight = 1

        let availableLeft = max(0, currentPos - ordered.startIndex)
        let availableRight = max(0, (ordered.endIndex - 1) - currentPos)

        // Allocate left/right counts, shifting remainder to the other side if needed
        var leftCount = min(desiredLeft, availableLeft)
        var rightCount = min(desiredRight, availableRight)

        // If one side lacks, try to shift to the other side
        if leftCount < desiredLeft {
            let deficit = desiredLeft - leftCount
            let extra = min(deficit, availableRight - rightCount)
            rightCount += max(0, extra)
        }
        if rightCount < desiredRight {
            let deficit = desiredRight - rightCount
            let extra = min(deficit, availableLeft - leftCount)
            leftCount += max(0, extra)
        }

        // Collect indices for full-size window honoring visual direction
        var items: [VisibleItem] = []

        // Helper to append a logical position as full-size on the correct visual side
        func addFullSize(pos: Int) {
            let item = VisibleItem(index: ordered[pos], scale: 1.0)
            if isReversedDirection {
                // In reversed visual direction, increasing positions are visually left-to-right reversed
                items.append(item)
            } else {
                items.append(item)
            }
        }

        // Left logical side (positions less than currentPos)
        if leftCount > 0 {
            let start = currentPos - leftCount
            for pos in start..<currentPos { addFullSize(pos: pos) }
        }
        // Current
        addFullSize(pos: currentPos)
        // Right logical side
        if rightCount > 0 {
            let end = currentPos + rightCount
            if currentPos + 1 <= end {
                for pos in (currentPos + 1)...end { addFullSize(pos: pos) }
            }
        }

        // Helper to get the next position visually to the left/right of the current items window
        func nextVisualPosition(onLeft: Bool) -> Int? {
            // Determine current window bounds in `ordered` positions
            let firstPos = items.first.flatMap { ordered.firstIndex(of: $0.index) } ?? currentPos
            let lastPos = items.last.flatMap { ordered.firstIndex(of: $0.index) } ?? currentPos
            if (onLeft != isReversedDirection) {
                // Visual left corresponds to logical left when not reversed
                let pos = firstPos - 1
                return pos >= ordered.startIndex ? pos : nil
            } else {
                // Visual left corresponds to logical right when reversed
                let pos = lastPos + 1
                return pos < ordered.endIndex ? pos : nil
            }
        }

        func appendScaledNeighborVisually(onLeft: Bool, scale: CGFloat) {
            if let pos = nextVisualPosition(onLeft: onLeft) {
                if !items.contains(where: { $0.index == ordered[pos] }) {
                    if (onLeft != isReversedDirection) {
                        // Insert at the beginning for visual left in normal direction
                        items.insert(VisibleItem(index: ordered[pos], scale: scale), at: 0)
                    } else {
                        // Append at the end for visual left in reversed direction
                        items.append(VisibleItem(index: ordered[pos], scale: scale))
                    }
                }
            }
        }

        // Now add scaled neighbors beyond the full-size window in visual terms
        // First outer neighbor (0.75) on each available side
        appendScaledNeighborVisually(onLeft: true, scale: 0.75)
        appendScaledNeighborVisually(onLeft: false, scale: 0.75)
        // Second outer neighbor (0.5) on each available side
        appendScaledNeighborVisually(onLeft: true, scale: 0.5)
        appendScaledNeighborVisually(onLeft: false, scale: 0.5)

        return items
    }
    
    var body: some View{
        switch style.direction{
            case .natural, .leftToRight, .rightToLeft:
                HStack(spacing: 5){
                    SwiftUI.ForEach(visibleItems()) { item in
                        button(index: item.index, isHorizontal: true, isForward: style.direction != .rightToLeft)
                            .scaleEffect(item.scale)
                            .opacity(item.scale < 1.0 ? (item.scale <= 0.5 ? 0.8 : 0.9) : 1.0)
                            .animation(.smooth, value: currentSelectedElement)
                    }
                }
                .padding(5)
                .background(invertedPrimary)
                .clipShape(.capsule)
                .padding(.all, style.indicatorSpacing)
                .padding(style.paddingEdges ?? .all, style.paddingLeght ?? 0)
            case .topToBottom, .bottomToTop:
                VStack(spacing: 5){
                    SwiftUI.ForEach(visibleItems()) { item in
                        button(index: item.index, isHorizontal: false, isForward: style.direction == .topToBottom)
                            .scaleEffect(item.scale)
                            .opacity(item.scale < 1.0 ? (item.scale <= 0.5 ? 0.8 : 0.9) : 1.0)
                            .animation(.smooth, value: currentSelectedElement)
                    }
                }
                .padding(5)
                .background(invertedPrimary)
                .clipShape(.capsule)
                .padding(.all, style.indicatorSpacing)
                .padding(style.paddingEdges ?? .all, style.paddingLeght ?? 0)
        }
    }
    
    @ViewBuilder
    func button(index: Int, isHorizontal: Bool, isForward: Bool) -> some View{
        Button{
            currentSelectedElement = index
        }label: {
            if let progress, duration != nil, currentSelectedElement == index{
                if isHorizontal{
                    ZStack(alignment: isForward ? .leading : .trailing) {
                        Capsule()
                            .fill(style.indicatorTintColor ?? Color.secondary)
                        UnevenRoundedRectangle(
                            topLeadingRadius: isForward ? 0 : 5,
                            bottomLeadingRadius: isForward ? 0 : 5,
                            bottomTrailingRadius: isForward ? 5 : 0,
                            topTrailingRadius: isForward ? 5 : 0
                        )
                        .fill(style.currentPageIndicatorTintColor ?? Color.primary)
                        .frame(width: 20 * progress, height: 7, alignment: .leading)
                    }
                    .frame(width: currentSelectedElement == index && duration != nil ? 20: 7, height: 7)
                    .clipShape(.capsule)
                    .animation(.smooth, value: currentSelectedElement)
                }else{
                    ZStack(alignment: isForward ? .top : .bottom) {
                        Capsule()
                            .fill(style.indicatorTintColor ?? Color.secondary)
                        UnevenRoundedRectangle(
                            topLeadingRadius: isForward ? 0 : 5,
                            bottomLeadingRadius: isForward ? 5 : 0,
                            bottomTrailingRadius: isForward ? 5 : 0,
                            topTrailingRadius: isForward ? 0 : 5
                        )
                        .fill(style.currentPageIndicatorTintColor ?? Color.primary)
                        .frame(width: 7, height: 20 * progress, alignment: .leading)
                    }
                    .frame(width: 7, height: currentSelectedElement == index && duration != nil ? 20 : 7)
                    .clipShape(.capsule)
                    .animation(.smooth, value: currentSelectedElement)
                }
            }else{
                ZStack(alignment: isForward ? .leading : .trailing) {

                    if currentSelectedElement == index{
                        if let specifiedImageValue = style.currentIndicatorImage[index], let specifiedImage = specifiedImageValue{
                            specifiedImage
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(style.currentPageIndicatorTintColor ?? Color.primary)
                        }else if let preferedImage = style.preferredCurrentPageIndicatorImage{
                            preferedImage
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(style.currentPageIndicatorTintColor ?? Color.primary)

                        }else if let preferedImage = style.preferredIndicatorImage{
                            preferedImage
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(style.indicatorTintColor ?? Color.primary)
                        }else{
                            Capsule()
                                .fill(style.currentPageIndicatorTintColor ?? Color.primary)
                        }
                    }else{
                        if let specifiedImageValue = style.indicatorImage[index], let specifiedImage = specifiedImageValue{
                            specifiedImage
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(style.indicatorTintColor ?? Color.secondary)
                        }else if let preferedImage = style.preferredIndicatorImage{
                            preferedImage
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(style.indicatorTintColor ?? Color.secondary)
                        }else{
                            Capsule()
                                .fill(style.indicatorTintColor ?? Color.secondary)
                        }
                    }
                    
                }
                .frame(width: 7, height: 7)

                .animation(.smooth, value: currentSelectedElement)
            }

        }
        .buttonStyle(.plain)
    }
}
#endif

