//
//  TextFieldView.swift
//  BucksMe
//
//  Created by Anton Tsikhanovich on 26/12/2022.
//

import SwiftUI

struct TextFieldView: View {
    @State var text: String = ""
    
    var title: String
    var placeholder: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(R.font.latoRegular.font(size: 12))
                .foregroundColor(R.color.text.color)
            
            TextField(placeholder, text: $text)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(R.color.text.color, lineWidth: 1)
                )
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(title: "Login", placeholder: "user@gmail.com")
    }
}
