//
//  Coordinator.swift
//  SwiftUICoordinator
//
//  Created by Jarrod Parkes on 10/26/20.
//

import Combine
import SwiftUI

enum ScreenType {
    case red
    case blue
    case purple
    
    var name: String {
        switch self {
        case .red: return "Red"
        case .blue: return "Blue"
        case .purple: return "Purple"
        }
    }
    
    @ViewBuilder var body: some View {
        // TODO: use creational pattern to make View
        switch self {
        case .red:
            ColorView(color: Color.red)
        case .blue:
            ColorView(color: Color.blue)
        case .purple:
            ColorView(color: Color.purple)
        }
    }
}

class Coordinator: ObservableObject {
    let objectWillChange = PassthroughSubject<Coordinator,Never>()
    
    var screenType: ScreenType {
        didSet {
            withAnimation() {
                objectWillChange.send(self)
            }
        }
    }
    
    @ViewBuilder var body: some View {
        // TODO: use creational pattern to make View
        switch screenType {
        case .red:
            ColorView(color: Color.red)
        case .blue:
            ColorView(color: Color.blue)
        case .purple:
            ColorView(color: Color.purple)
        }
    }
    
    init() {
        screenType = .red
    }
    
    func previousType() {
        screenType = computePreviousType()
    }
    
    func nextType() {
        screenType = computeNextType()
    }
    
    private func computePreviousType() -> ScreenType {
        switch screenType {
        case .red:
            return .purple
        case .blue:
            return .red
        case .purple:
            return .blue
        }
    }
    
    private func computeNextType() -> ScreenType {
        switch screenType {
        case .red:
            return .blue
        case .blue:
            return .purple
        case .purple:
            return .red
        }
    }
}
