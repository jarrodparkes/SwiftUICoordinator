//
//  ContentView.swift
//  SwiftUICoordinator
//
//  Created by Jarrod Parkes on 10/26/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var coordinator: Coordinator
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            coordinator.body
            HStack {
                Button("Prev") {
                    coordinator.previousType()
                }
                Button("Next") {
                    coordinator.nextType()
                }
            }
        }.padding()
    }
}

struct ColorView: View {
    @State var color: Color
    var body: some View {
        Text(color.description.capitalized)
            .padding()
            .background(color)
    }
}
