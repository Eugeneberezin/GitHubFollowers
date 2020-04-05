//
//  UserInfoVS.swift
//  GHFollowers
//
//  Created by Eugene Berezin on 4/4/20.
//  Copyright © 2020 Eugene Berezin. All rights reserved.
//

import UIKit

class UserInfoVS: UIViewController {

    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismssVC))
        navigationItem.rightBarButtonItem = doneButton
        
        NetworkManager.shared.getUserInfo(for: username) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let user):
                print(user)
                
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Something went wrong", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
    
    
    @objc func dismssVC() {
        dismiss(animated: true)
    }

}
