//
//  ContentView.swift
//  MyGan
//
//  Created by Boaz Froog on 28/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var phoneNumber = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        VStack {
            TextField("Phone Number", text: $phoneNumber)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button("Login with Phone Number") {
                //TODO: implement phone number auth
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(8)
            
            Divider().padding()
            
            TextField("Email", text: $email)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            SecureField("Password", text: $password)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Login with Gmail") {
                //TODO: implement Google auth
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(8)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
