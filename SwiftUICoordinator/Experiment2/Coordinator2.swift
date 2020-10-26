//
//  Coordinator2.swift
//  SwiftUICoordinator
//
//  Created by Jarrod Parkes on 10/26/20.
//

import Combine
import SwiftUI

class Coordinator2: ObservableObject {        
    var screenType: ScreenType2    
    var count = 0
    
    @ViewBuilder var body: some View {
        NavigationView {
            ColorWithNavItemView(count: count, type: screenType)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    init() {
        screenType = .red
    }
}
