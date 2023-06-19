//
//  ToDOiOSApp.swift
//  ToDOiOS
//
//  Created by Igor Odaryuk on 19.06.2023.
//
import FirebaseCore
import SwiftUI

@main
struct ToDOiOSApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
