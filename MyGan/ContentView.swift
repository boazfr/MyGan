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
    @State private var selectedLoginMethod: LoginMethod?
    
    enum LoginMethod {
        case phoneNumber
        case gmail
    }
    
    var body: some View {
        
        VStack {
            Text("MyGan")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 30)
            
            Spacer()
            
            Button("Login with Phone Number") {
                withAnimation {
                    selectedLoginMethod = .phoneNumber
                }
                
                //TODO: implement phone number auth
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(8)
            
            if selectedLoginMethod == .phoneNumber {
                TextField("Phone Number", text: $phoneNumber)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .transition(.slide)
            }
            
            Divider().padding()
            
            Button("Login with Gmail") {
                withAnimation {
                    selectedLoginMethod = .gmail
                }
                
                //TODO: implement Google auth
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(8)
            
            if selectedLoginMethod == .gmail {
                TextField("Email", text: $email)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .transition(.opacity)
                
                SecureField("Password", text: $password)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .transition(.opacity)
            }
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
