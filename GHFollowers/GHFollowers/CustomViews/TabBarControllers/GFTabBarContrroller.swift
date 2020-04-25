//
//  GFTabBarContrroller.swift
//  GHFollowers
//
//  Created by Eugene Berezin on 4/14/20.
//  Copyright © 2020 Eugene Berezin. All rights reserved.
//

import UIKit

class GFTabBarContrroller: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .systemGreen
        viewControllers          = [createSearchNC(), createFavoritesNC()]
        
    }
    
    func createSearchNC() -> UINavigationController {
           let searchVC        = SearchViC()
           searchVC.title      = "Search"
           searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
           
           return UINavigationController(rootViewController: searchVC)
       }
       
    
    func configureNavigationBar() {
        UINavigationBar.appearance().tintColor = .systemGreen
    }
       
       func createFavoritesNC() -> UINavigationController {
           let favoritesListVC         = FavoritesVC()
           favoritesListVC.title       = "Favorites"
           favoritesListVC.tabBarItem  = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
           
           return UINavigationController(rootViewController: favoritesListVC)
       }
       
       
       

 

}
