//
//  MainAppViewModel.swift
//  BucksMe
//
//  Created by Anton Tsikhanovich on 20/12/2022.
//

import Foundation

class MainAppViewModel: ObservableObject {
    @Published var state: MainAppState = .login
}
