//
//  Estarta_AppApp.swift
//  Estarta-App
//
//  Created by eng-oday on 04/10/2024.
//

import SwiftUI

@main
struct Estarta_AppApp: App {
    
    private let appDIContainer = AppDIContainer()
    
    var body: some Scene {
        WindowGroup {
            appDIContainer.productListView
        }
    }
}
