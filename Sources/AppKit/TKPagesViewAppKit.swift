//
//  TKPagesView.swift
//  TabKit
//
//  Created by Kamil Szpak on 06/10/2025.
//


import SwiftUI

#if os(macOS) || os(watchOS)

public struct TKPagesView: View {
    var customSelectedIndex: Binding<Int>?
    @State private var defaultBinding: Int = 0

    private var selectedIndex: Binding<Int> {
        customSelectedIndex ?? $defaultBinding
    }

    @State private var remindingDuration: Double? = nil
    @State private var scrollPositionBinding: Int? = 0
    @State private var isUpdatedWithIndex = false
    @State private var isUpdatedWithScroll = false
    @State private var isAutoChange = false
    @State private var timer: Timer? = nil
    @State private var progressTimer: Timer? = nil
    @State private var timerProgress: Double = 0.0
    
    let pages: [TKPage]
    let options: TKPageOptions
    var pageControlStyle: TKPageControlStyle

    public var body: some View {
        GeometryReader { geo in
            ZStack(alignment: pageControlStyle.alignment) {
                scrollContent(geo: geo)
                TKPagesControlView(
                    currentSelectedElement: selectedIndex,
                    progress: timerProgress,
                    duration: remindingDuration,
                    numberOfElements: pages.count,
                    style: pageControlStyle
                )
            }
        }
        .ignoresSafeArea()
        .onAppear {
            onPageChange(oldValue: selectedIndex.wrappedValue, newValue: selectedIndex.wrappedValue, isInitial: true)
        }
        .onDisappear {
            stopAllTimers()
        }
        .onChange(of: selectedIndex.wrappedValue) { oldValue, newValue in
            if !isUpdatedWithScroll {
                isUpdatedWithIndex = true
                withAnimation(.smooth) {
                    scrollPositionBinding = newValue
                }
                onPageChange(oldValue: oldValue, newValue: newValue)
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                    isUpdatedWithIndex = false
                }
            }
        }
        .onChange(of: scrollPositionBinding ?? 0) { oldValue, newValue in
            if !isUpdatedWithIndex {
                isUpdatedWithScroll = true
                withAnimation(.smooth) {
                    selectedIndex.wrappedValue = newValue
                }
                onPageChange(oldValue: oldValue, newValue: newValue)
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                    isUpdatedWithScroll = false
                }
            }
        }
    }

    // MARK: - Page Change Handler
    func onPageChange(oldValue: Int, newValue: Int, isInitial: Bool = false) {
        remindingDuration = pages[newValue].progress?() as? Double
        
        if !isInitial {
            if isAutoChange {
                options.pageAutoChangeIndexFunction?(oldValue, newValue)
                options.pageAutoChangeDirectionFunction?(newValue, oldValue < newValue ? .forward : .reverse)
            } else {
                options.pageManualChangeIndexFunction?(oldValue, newValue)
                options.pageManualChangeDirectionFunction?(newValue, oldValue < newValue ? .forward : .reverse)
            }
        }
        startTimerIfNeeded()
    }

    // MARK: - Auto Page Timer
    func startTimerIfNeeded() {
        stopAllTimers()
        guard let duration = remindingDuration else { return }
        
        // Reset progress
        timerProgress = 0.0
        
        // Auto page timer
        timer = Timer.scheduledTimer(withTimeInterval: duration, repeats: false) { _ in
            timerProgress = 1.0
            goToNextPage()
        }
        
        // Progress update timer (UI animation)
        let interval = 0.05
        var elapsed: Double = 0
        progressTimer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { t in
            elapsed += interval
            let progress = min(elapsed / duration, 1.0)
            timerProgress = progress
            if progress >= 1.0 {
                t.invalidate()
            }
        }
    }

    func stopAllTimers() {
        timer?.invalidate()
        progressTimer?.invalidate()
        timer = nil
        withAnimation(nil){
            timerProgress = 0
        }
        progressTimer = nil
    }

    func goToNextPage() {
        guard !pages.isEmpty else { return }
        let nextIndex = (selectedIndex.wrappedValue + 1) % pages.count
        isAutoChange = true
        withAnimation(.smooth) {
            selectedIndex.wrappedValue = nextIndex
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            isAutoChange = false
        }
    }

    // MARK: - Scroll Content
    @ViewBuilder
    func scrollContent(geo: GeometryProxy) -> some View {
        let axis: Axis.Set = options.orientation == .horizontal ? .horizontal : .vertical
        ScrollView(axis, showsIndicators: false) {
            if axis == .horizontal {
                LazyHStack(spacing: 0) {
                    SwiftUI.ForEach(pages.indices, id: \.self) { index in
                        let page = pages[index]
                        page.content
                            .frame(width: geo.size.width, height: geo.size.height)
                            .id(index)
                    }
                }
                .scrollTargetLayout()
            } else {
                LazyVStack(spacing: 0) {
                    SwiftUI.ForEach(pages.indices, id: \.self) { index in
                        let page = pages[index]
                        page.content
                            .frame(width: geo.size.width, height: geo.size.height)
                            .id(index)
                    }
                }
                .scrollTargetLayout()
            }
        }
        .scrollTargetBehavior(.paging)
        .scrollPosition(id: $scrollPositionBinding, anchor: .center)
    }

    // MARK: - Initializers
    public init(@TKPageBuilder pages: () -> [TKPage]) {
        self.pages = pages()
        self.customSelectedIndex = nil
        self.options = .init(pages: pages())
        self.pageControlStyle = .init()
    }

    public init(pages: [TKPage]) {
        self.pages = pages
        self.customSelectedIndex = nil
        self.options = .init(pages: pages)
        self.pageControlStyle = .init()
    }
}

#endif

#Preview {
    if #available(iOS 17.0, tvOS 17.0, *) {
        TKPagesView {
            TKPage {
                ZStack {
                    Color.red
                    Text("Apple")
                }
                .ignoresSafeArea()
            }
            .tkPageDuration(3)
            TKPage {
                ZStack {
                    Color.green
                    Text("Banana")
                }
                .ignoresSafeArea()
            }
            .tkPageDuration(3)
            TKPage {
                ZStack {
                    Color.orange
                    Text("Tomato")
                }
            }
            .tkPageDuration(3)
        }
        .tkOnManualPageChange { _, new in let n: Int = new;  print("Manual change") }
        .tkOnAutoPageChange { _, new in let n: Int = new;  print("Auto change") }
        .tkPageNavigationOrientation(.horizontal)
        .tkPageControlAlignment(.bottom)
        .tkPageControlDirection(.natural)
        .ignoresSafeArea()
    }
}

