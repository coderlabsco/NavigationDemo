//
//  HomeViewController.swift
//  NavigationiOS
//
//  Created by Bryan A Bolivar M on 3/09/21.
//

import Foundation
import SwiftUI

class HomeViewController: UIViewController, ViewDelegate {
    
    var hostedView: UIView = UIView()
    
    init() {
        super.init(nibName: nil, bundle: .main)
        hostedView = UIHostingController<HomeView>(rootView: HomeView(controller: self)).view
        view.addSubview(hostedView)
        hostedView.frame = view.frame
    }
    
    func didPerformAction(_ type: ViewAction) {
        switch type {
        case .didPressGoBack:
            self.navigationController?.popViewController(animated: true)
        case .viewDetails:
            let vc = DetailsViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


