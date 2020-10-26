//
//  ScreenType.swift
//  SwiftUICoordinator
//
//  Created by Jarrod Parkes on 10/26/20.
//

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
