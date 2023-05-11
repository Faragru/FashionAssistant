//
//  LoginView.swift
//  FashionAssistant
//
//  Created by Stan Ciprian on 10.05.2023.
//
import FirebaseAuth
import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn: Bool
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showErrorAlert = false
    @State private var errorMessage = ""

    var body: some View {
        VStack {
            Text("Login")
                .font(.largeTitle)
            
            TextField("Email", text: $email)
                .padding()
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
            
            SecureField("Password", text: $password)
                .padding()
            
            Button("Login") {
                //login with Firebase
                handleLogin()
            }
            .padding()
            
            NavigationLink(destination: RegistrationView()) {
                Text("Don't have an account? Register")
            }
        }
        .padding()
        .alert(isPresented: $showErrorAlert) {
            Alert(title: Text("Login Error"), message: Text(errorMessage), dismissButton: .default(Text("OK")))
        }
    }
    
    func handleLogin() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                self.errorMessage = error.localizedDescription
                self.showErrorAlert = true
            } else {
                self.isLoggedIn = true
            }
        }
    }
}
