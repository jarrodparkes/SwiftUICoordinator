//
//  ScreenType2.swift
//  SwiftUICoordinator
//
//  Created by Jarrod Parkes on 10/26/20.
//

import SwiftUI

enum ScreenType2 {
    case red
    case blue
    case purple
    case green
    
    var name: String {
        switch self {
        case .red: return "Red"
        case .blue: return "Blue"
        case .purple: return "Purple"
        case .green: return "Green"
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
        case .green:
            ColorView(color: Color.green)
        }
    }
    
    func computeNextType(count: Int) -> some View {
        if count >= 100 {
            return ColorWithNavItemView(count: count, type: .green)
        } else {
            switch self {
            case .red:
                return ColorWithNavItemView(count: count + 50, type: .blue)
            case .blue:
                return ColorWithNavItemView(count: count + 50, type: .purple)
            default:
                return ColorWithNavItemView(count: count + 50, type: .red)
            }
        }        
    }
}
