//
//  DetailsViewController.swift
//  NavigationiOS
//
//  Created by Bryan A Bolivar M on 3/09/21.
//

import UIKit
import SwiftUI

class DetailsViewController: UIViewController, DetailsViewDelegate {
    
    var hostedView: UIView = UIView()
    
    init() {
        super.init(nibName: nil, bundle: .main)
        hostedView = UIHostingController<DetailsView>(rootView: DetailsView(controller: self)).view
        view.addSubview(hostedView)
        hostedView.frame = view.frame
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func didPerformAction(_ type: DetailsViewAction) {
        switch type {
        case .didPressGoBack:
            self.navigationController?.popViewController(animated: true)
        case .didPressViewComments:
            print("view comments")
        case .didPressShare:
            print("share content")
        }
    }
}
