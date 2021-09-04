//
//  HomeViewModel.swift
//  NavigationiOS
//
//  Created by Bryan A Bolivar M on 3/09/21.
//

import Foundation
import SwiftUI
import Combine

class HomeViewModel: ObservableObject {
    @Published var timeString = ""
    
    func updateTime() {
        timeString = "New Time"
    }
}
