//
//  ColorView.swift
//  SwiftUICoordinator
//
//  Created by Jarrod Parkes on 10/26/20.
//

import SwiftUI

struct ColorView: View {
    @State var color: Color
    var body: some View {
        Text(color.description.capitalized)
            .padding()
            .background(color)
            .navigationBarTitle(color.description.capitalized,
                                displayMode: .inline)
    }
}

