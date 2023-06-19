//
//  LoginView.swift
//  ToDOiOS
//
//  Created by Igor Odaryuk on 19.06.2023.
//

import Foundation
import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            //Header
            HeaderView()
            
            //LoginForm
            Form {
                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button {
                    //Attempt log in
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue)
                        
                        Text("Log In")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                }
            }
            //Create Account
            VStack {
                Text("New around here?")
                Button("Create An Account") {
                    //Show Registration
                }
            }
            .padding(.bottom, 50)
            
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
