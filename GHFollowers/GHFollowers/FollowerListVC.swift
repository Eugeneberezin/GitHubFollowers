//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Eugene Berezin on 1/19/20.
//  Copyright © 2020 Eugene Berezin. All rights reserved.
//

import Foundation
import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
