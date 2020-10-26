//
//  ContentView1.swift
//  SwiftUICoordinator
//
//  Created by Jarrod Parkes on 10/26/20.
//

import SwiftUI

struct ContentView1: View {
    @ObservedObject var coordinator: Coordinator1
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 16) {
                coordinator.screenType.body
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
}
