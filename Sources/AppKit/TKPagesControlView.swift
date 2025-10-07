//
//  TKPagesControlView.swift
//  TabKit
//
//  Created by Kamil Szpak on 06/10/2025.
//

#if canImport(AppKit)

import SwiftUI

struct TKPagesControlView: View{
    @Binding var currentSelectedElement: Int
    let progress: Double?
    let duration: Double?
    let numberOfElements: Int
    let style: TKPageControlStyle
    
    
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
            HStack{
                SwiftUI.ForEach(indicies, id: \.self){ index in
                    button(index: index, isHorizontal: true, isForward: style.direction != .rightToLeft)
                }
            }
            .padding(.all, style.spacing)
        case .topToBottom, .bottomToTop:
            VStack{
                SwiftUI.ForEach(indicies, id: \.self){ index in
                    button(index: index, isHorizontal: false, isForward: style.direction == .topToBottom)
                }
            }
            .padding(.all, style.spacing)
        }
    }
    
    @ViewBuilder
    func button(index: Int, isHorizontal: Bool, isForward: Bool) -> some View{
        Button{
            currentSelectedElement = index
        }label: {
            if let progress, currentSelectedElement == index{
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
                        .frame(width: 30 * progress, height: 10, alignment: .leading)
                    }
                    .frame(width: currentSelectedElement == index && duration != nil ? 30: 10, height: 10)
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
                        .frame(width: 10, height: 30 * progress, alignment: .leading)
                    }
                    .frame(width: 10, height: currentSelectedElement == index && duration != nil ? 30: 10)
                    .clipShape(.capsule)
                    .animation(.smooth, value: currentSelectedElement)
                }
            }else{
                ZStack(alignment: isForward ? .leading : .trailing) {
                    if let specifiedImageValue = style.indicatorImage[index], let specifiedImage = specifiedImageValue{
                        Image(nsImage: specifiedImage)
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(style.indicatorTintColor ?? Color.secondary)
                    }else if let preferedImage = style.preferredIndicatorImage{
                        Image(nsImage: preferedImage)
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(style.indicatorTintColor ?? Color.secondary)
                    }else{
                        Capsule()
                            .fill(style.indicatorTintColor ?? Color.secondary)
                    }
                    if currentSelectedElement == index{
                        if let specifiedImageValue = style.currentIndicatorImage[index], let specifiedImage = specifiedImageValue{
                            Image(nsImage: specifiedImage)
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(style.currentPageIndicatorTintColor ?? Color.primary)
                        }else if let preferedImage = style.preferredCurrentPageIndicatorImage{
                            Image(nsImage: preferedImage)
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(style.currentPageIndicatorTintColor ?? Color.primary)
                        }else{
                            Capsule()
                                .fill(style.currentPageIndicatorTintColor ?? Color.primary)
                        }
                    }
                    
                }
                .frame(width: 10, height: 10)
                .clipShape(.capsule)
                .animation(.smooth, value: currentSelectedElement)
            }

        }
        .buttonStyle(.plain)
    }
}

#Preview {
    TKPagesView{
        TKPage{
            ZStack{
                Color.white
                Text("Apple")
            }
            .ignoresSafeArea()
        }
        .tkPageDuration(1)
        TKPage{
            ZStack{
                Color.green
                Text("Banana")
            }
            .ignoresSafeArea()
        }
        .tkPageDuration(1)
        TKPage{
            ZStack{
                Color.orange
                Text("Tomato")
            }
            .ignoresSafeArea()
        }
        .tkPageDuration(1)
    }
    .tkPageControlAlignment(.leading)
    .tkPageControlDirection(.topToBottom)
    .tkPageControlPreferredCurrentPageIndicatorImage(image: NSImage(systemSymbolName: "bus", accessibilityDescription: ""))
    .tkPageControlPreferredIndicatorImage(image: NSImage(systemSymbolName: "car", accessibilityDescription: ""))
}

#endif
