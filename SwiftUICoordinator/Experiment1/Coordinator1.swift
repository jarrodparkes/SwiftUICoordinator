//
//  Coordinator1.swift
//  SwiftUICoordinator
//
//  Created by Jarrod Parkes on 10/26/20.
//

import Combine
import SwiftUI

class Coordinator1: ObservableObject {
    let objectWillChange = PassthroughSubject<Coordinator1,Never>()
    
    var screenType: ScreenType1 {
        didSet {
            withAnimation() {
                objectWillChange.send(self)
            }
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
    
    private func computePreviousType() -> ScreenType1 {
        switch screenType {
        case .red:
            return .purple
        case .blue:
            return .red
        case .purple:
            return .blue
        }
    }
    
    private func computeNextType() -> ScreenType1 {
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
