//
//  SwiftUICoordinatorApp.swift
//  SwiftUICoordinator
//
//  Created by Jarrod Parkes on 10/26/20.
//

import SwiftUI

@main
struct SwiftUICoordinatorApp: App {
    
    let coordinator = Coordinator1()
    
    var body: some Scene {
        WindowGroup {
            ContentView1(coordinator: coordinator)
        }
    }
}
