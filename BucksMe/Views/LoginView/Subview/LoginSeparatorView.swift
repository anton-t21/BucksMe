//
//  LoginSeparatorView.swift
//  BucksMe
//
//  Created by Anton Tsikhanovich on 26/12/2022.
//

import SwiftUI

struct LoginSeparatorView: View {
    var body: some View {
        ZStack {
            R.color.text.color
                .frame(height: 1)
            
            Text("OR")
                .font(R.font.latoRegular.font(size: 8))
                .foregroundColor(R.color.white.color)
                .frame(width: 28, height: 20)
                .background(R.color.primary.color.cornerRadius(10))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(R.color.text.color, lineWidth: 1)
                )
        }
    }
}

struct LoginSeparatorView_Previews: PreviewProvider {
    static var previews: some View {
        LoginSeparatorView()
    }
}
