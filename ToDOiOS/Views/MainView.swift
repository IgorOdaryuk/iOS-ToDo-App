//
//  ContentView.swift
//  ToDOiOS
//
//  Created by Igor Odaryuk on 19.06.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
         LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
