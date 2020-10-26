//
//  ColorWithNavItemView.swift
//  SwiftUICoordinator
//
//  Created by Jarrod Parkes on 10/26/20.
//

import SwiftUI

struct ColorWithNavItemView: View {
    @State var count: Int
    @State var type: ScreenType2
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            type.body
            NavigationLink(destination: type.computeNextType(count: count)) {
                Text("Navigate")
            }
        }
    }
}
