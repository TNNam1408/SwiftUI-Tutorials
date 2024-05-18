//
//  landmarksApp.swift
//  landmarks
//
//  Created by Tran Nhat Nam on 13/05/2024.
//

import SwiftUI

@main
struct landmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
