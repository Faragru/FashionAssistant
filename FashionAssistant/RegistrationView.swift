//
//  RegistrationView.swift
//  FashionAssistant
//
//  Created by Stan Ciprian on 10.05.2023.
//
import FirebaseAuth 
import SwiftUI

struct RegistrationView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    
    var body: some View {
        VStack {
            Text("Registration")
                .font(.largeTitle)
            
            
            TextField("Email", text: $email)
                .padding()
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
            
            SecureField("Password", text: $password)
                .padding()
            
            SecureField("Conform Password", text: $confirmPassword)
                .padding()
        
            Button("Register") {
                // Handle registration with Firebase
            }
            .padding()
        }
        .padding()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
