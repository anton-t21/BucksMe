//
//  FontResourceExtension.swift
//  BucksMe
//
//  Created by Anton Tsikhanovich on 26/12/2022.
//

import SwiftUI
import RswiftResources
import Foundation

extension FontResource {
    func font(size: CGFloat) -> Font {
        Font.custom(self, size: size)
    }
}

extension ImageResource {
    var image: Image {
        Image(name)
    }
}

extension ColorResource {
    var color: Color {
        Color(name)
    }
}
