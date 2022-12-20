//
//  LoginButtonView.swift
//  BucksMe
//
//  Created by Anton Tsikhanovich on 26/12/2022.
//

import SwiftUI

struct LoginButtonView: View {
    enum ButtonType {
        case google, facebook
    }
    
    var type: ButtonType
    var buttonAction: () -> Void
    
    var body: some View {
        Button(action: buttonAction) {
            ZStack {
                R.color.primary.color
                HStack(spacing: 12) {
                    type == .facebook ? R.image.facebook_icon.image : R.image.google_icon.image
                    Text(type == .facebook ? "Log in with Facebook" : "Log in with Google")
                        .foregroundColor(R.color.white.color)
                        .font(R.font.latoRegular.font(size: 14))
                }
            }
        }
        .frame(width: 248, height: 44)
        .cornerRadius(4)
    }
}

struct LoginButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.yellow
            LoginButtonView(type: .facebook, buttonAction: {})
        }
    }
}
