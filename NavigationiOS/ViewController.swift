//
//  ViewController.swift
//  NavigationiOS
//
//  Created by Bryan A Bolivar M on 3/09/21.
//

import UIKit
import SwiftUI

class ViewController: UIViewController  {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func presentHomeView(_ sender: Any) {
        let vc = HomeViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

