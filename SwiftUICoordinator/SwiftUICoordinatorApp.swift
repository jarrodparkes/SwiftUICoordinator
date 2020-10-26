//
//  SwiftUICoordinatorApp.swift
//  SwiftUICoordinator
//
//  Created by Jarrod Parkes on 10/26/20.
//

import SwiftUI

@main
struct SwiftUICoordinatorApp: App {
    
    let coordinator = Coordinator2()
    
    var body: some Scene {
        WindowGroup {
            ContentView2(coordinator: coordinator)
        }
    }
}
