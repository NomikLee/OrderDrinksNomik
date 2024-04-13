//
//  MainTabViewController.swift
//  OrderDrinksNomik
//
//  Created by Pinocchio on 2024/4/11.
//

import UIKit

class MainTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = MenuViewController()
        let vc2 = SearchViewController()
        let vc3 = OrderViewController()
        let vc4 = AccountViewController()
        
        vc2.navigationItem.largeTitleDisplayMode = .automatic
        vc3.navigationItem.largeTitleDisplayMode = .automatic
        vc4.navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        let nav4 = UINavigationController(rootViewController: vc4)
        
        nav1.tabBarItem = UITabBarItem(title: "五十嵐", image: UIImage(systemName: "waterbottle"), selectedImage: UIImage(systemName: "waterbottle.fill"))
        nav2.tabBarItem = UITabBarItem(title: "搜索", image: UIImage(systemName: "magnifyingglass.circle"), selectedImage: UIImage(systemName: "magnifyingglass.circle.fill"))
        nav3.tabBarItem = UITabBarItem(title: "訂單", image: UIImage(systemName: "bag"), selectedImage: UIImage(systemName: "bag.fill"))
        nav4.tabBarItem = UITabBarItem(title: "帳戶", image: UIImage(systemName: "person.crop.circle"), selectedImage: UIImage(systemName: "person.crop.circle.fill"))
        
        nav1.setupNavBarColor()
        nav2.setupNavBarColor()
        nav3.setupNavBarColor()
        nav4.setupNavBarColor()
        
        
        for nav in [nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
    }
}

