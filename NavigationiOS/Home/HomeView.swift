//
//  HomeView.swift
//  NavigationDemo
//
//  Created by Bryan A Bolivar M on 3/09/21.
//
import UIKit
import SwiftUI
import Combine

enum ViewAction {
    case didPressGoBack
    case viewDetails
}

protocol ViewDelegate {
    func didPerformAction(_ type: ViewAction)
}

struct HomeView: View {
    
    @EnvironmentObject var viewModel: HomeViewModel
    
    var controller: HomeViewController
    var delegate: ViewDelegate {
        return controller
    }
    
    var body: some View {
        Button(action: {
            delegate.didPerformAction(.viewDetails)
        }, label: {
            Text("Volver")
            Image(systemName: "person")
        })
    }
}
