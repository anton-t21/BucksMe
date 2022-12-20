//
//  LoginView.swift
//  BucksMe
//
//  Created by Anton Tsikhanovich on 20/12/2022.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            Color(R.color.white)
            VStack(alignment: .center, spacing: 32) {
                Text("Log in")
                    .font(R.font.latoRegular.font(size: 24))
                    .minimumScaleFactor(0.5)
                    .foregroundColor(R.color.text.color)
                
                VStack(alignment: .trailing, spacing: 4) {
                    VStack(spacing: 16) {
                        TextFieldView(title: "Login", placeholder: "user@gmail.com")
                        TextFieldView(title: "Login", placeholder: "user@gmail.com")
                    }
                    
                    Button {
                        print("Button pressed")
                    } label: {
                        Text("Forgot Password?")
                            .underline()
                            .font(R.font.latoRegular.font(size: 12))
                            .foregroundColor(R.color.primary.color)
                    }
                }
                .padding(.horizontal, 56)
                
                LoginSeparatorView()
                    .padding(.horizontal, 56)
                
                VStack(spacing: 11) {
                    LoginButtonView(type: .google, buttonAction: { print("Test")})
                    
                    LoginButtonView(type: .facebook, buttonAction: {})
                }
                
                //                Spacer()
            }
        }
        .overlay(
            HStack(spacing: 3) {
                Text("Don't have an account? Than")
                    .font(R.font.latoRegular.font(size: 12))
                    .foregroundColor(R.color.text.color)
                
                Button {
                    print("Button pressed")
                } label: {
                    Text("Sign up")
                        .underline()
                        .font(R.font.latoRegular.font(size: 12))
                        .foregroundColor(R.color.primary.color)
                }
            }
                .padding(12), alignment: .bottom
        )
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
