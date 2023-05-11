//
//  FashionAssistantApp.swift
//  FashionAssistant
//
//  Created by Stan Ciprian on 10.05.2023.
//
import SwiftUI
import FirebaseCore

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true 
    }
}



struct FashionAssistantApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
            ContentView()
        }
    }
}
} 
