//
//  PKPagesControlView.swift
//  PagerKit
//
//  Created by Kamil Szpak on 06/10/2025.
//

#if os(macOS) || os(watchOS)

import SwiftUI

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
    var body: some View{
        switch style.direction{
            case .natural, .leftToRight, .rightToLeft:
                HStack(spacing: 5){
                    SwiftUI.ForEach(indicies, id: \.self){ index in
                        button(index: index, isHorizontal: true, isForward: style.direction != .rightToLeft)
                    }
                }
                .padding(5)
                .background(invertedPrimary)
                .clipShape(.capsule)
                .padding(.all, style.spacing)
            case .topToBottom, .bottomToTop:
                VStack(spacing: 5){
                    SwiftUI.ForEach(indicies, id: \.self){ index in
                        button(index: index, isHorizontal: false, isForward: style.direction == .topToBottom)
                    }
                }
                .padding(5)
                .background(invertedPrimary)
                .clipShape(.capsule)
                .padding(.all, style.spacing)
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
                    if let specifiedImageValue = style.indicatorImage[index], let specifiedImage = specifiedImageValue{
                        #if os(watchOS)
                        Image(uiImage: specifiedImage)
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(style.indicatorTintColor ?? Color.secondary)
                        #else
                        Image(nsImage: specifiedImage)
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(style.indicatorTintColor ?? Color.secondary)
                        #endif


                    }else if let preferedImage = style.preferredIndicatorImage{
                        #if os(watchOS)
                        Image(uiImage: preferedImage)
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(style.indicatorTintColor ?? Color.secondary)
                        #else
                        Image(nsImage: preferedImage)
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(style.indicatorTintColor ?? Color.secondary)
                        #endif
                    }else{
                        Capsule()
                            .fill(style.indicatorTintColor ?? Color.secondary)
                    }
                    if currentSelectedElement == index{
                        if let specifiedImageValue = style.currentIndicatorImage[index], let specifiedImage = specifiedImageValue{
                            #if os(watchOS)
                            Image(uiImage: specifiedImage)
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(style.currentPageIndicatorTintColor ?? Color.primary)
                            #else
                            Image(nsImage: specifiedImage)
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(style.currentPageIndicatorTintColor ?? Color.primary)
                            #endif

                        }else if let preferedImage = style.preferredCurrentPageIndicatorImage{
                            #if os(watchOS)
                            Image(uiImage: preferedImage)
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(style.currentPageIndicatorTintColor ?? Color.primary)
                            #else
                            Image(nsImage: preferedImage)
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(style.currentPageIndicatorTintColor ?? Color.primary)
                            #endif

                        }else{
                            Capsule()
                                .fill(style.currentPageIndicatorTintColor ?? Color.primary)
                        }
                    }
                    
                }
                .frame(width: 7, height: 7)
                .clipShape(.capsule)
                .animation(.smooth, value: currentSelectedElement)
            }

        }
        .buttonStyle(.plain)
    }
}
#endif

