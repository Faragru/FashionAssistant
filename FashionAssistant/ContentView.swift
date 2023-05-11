//
//  ContentView.swift
//  FashionAssistant
//
//  Created by Stan Ciprian on 10.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoggedIn = false
    
    var body: some View {
        NavigationView {
            if isLoggedIn {
                DigitalWardrobeView() 
            } else {
                LoginView(isLoggedIn: $isLoggedIn)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
