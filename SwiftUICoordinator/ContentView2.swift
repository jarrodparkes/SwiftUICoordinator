//
//  ContentView2.swift
//  SwiftUICoordinator
//
//  Created by Jarrod Parkes on 10/26/20.
//

import SwiftUI

struct ContentView2: View {
    @ObservedObject var coordinator: Coordinator2
    
    var body: some View {
        NavigationView {
            Text("fart")
                .navigationBarTitle("Hello", displayMode: .inline)
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2(coordinator: Coordinator2())
    }
}
