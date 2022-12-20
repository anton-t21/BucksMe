//
//  MainAppView.swift
//  BucksMe
//
//  Created by Anton Tsikhanovich on 20/12/2022.
//

import SwiftUI

struct MainAppView: View {
    @ObservedObject var viewModel: MainAppViewModel
    
    var body: some View {
        makeView(for: viewModel.state)
    }
    
    @ViewBuilder func makeView(for state: MainAppState) -> some View {
        switch state {
        case .login:
            LoginView()
//            SplashScreenView(viewModel: .init(isLoading: $viewModel.isLoading,
//                                              errorAlert: $viewModel.errorAlert,
//                                              showTryAgainButton: $viewModel.recieveOneOrMoreError,
//                                              tryAgainAction: { viewModel.tryConfigureAPIAgain(numberOfAttempts: 1) })
//            )
        case .app:
//            MainTabView()
            LoginView()
        }
    }
}
