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
    let headerView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismssVC))
        navigationItem.rightBarButtonItem = doneButton
        
        NetworkManager.shared.getUserInfo(for: username) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let user):
                DispatchQueue.main.async {
                    self.add(childVC: GFUserInfoHeaderVC(user: user), to: self.headerView)
                }
                
                
                
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Something went wrong", message: error.rawValue, buttonTitle: "Ok")
            }
        }
        layoutUI()
    }
    
    func layoutUI() {
        view.addSubview(headerView)
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
        headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
        headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        headerView.heightAnchor.constraint(equalToConstant: 180)
        ])
    }
    
    func add(childVC: UIViewController, to contaierView: UIView) {
        addChild(childVC)
        contaierView.addSubview(childVC.view)
        childVC.view.frame = contaierView.bounds
        childVC.didMove(toParent: self)
    }
    
    
    
    
    @objc func dismssVC() {
        dismiss(animated: true)
    }

}