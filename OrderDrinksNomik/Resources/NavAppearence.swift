//
//  NavAppearence.swift
//  OrderDrinksNomik
//
//  Created by Pinocchio on 2024/4/11.
//

import Foundation
import UIKit


extension UINavigationController {
    
    func setupNavBarColor() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        
        appearance.backgroundColor = UIColor(red: 0, green: 51/256, blue: 102/256, alpha: 1)
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        navigationBar.standardAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
        navigationBar.compactAppearance = appearance
//        navigationBar.tintColor = .green
        
//        UIBarButtonItem.appearance().tintColor = .white
        
        
        UITabBar.appearance().tintColor = .white
        UITabBar.appearance().barTintColor = .white
        UITabBar.appearance().backgroundColor = UIColor(red: 0, green: 51/256, blue: 102/256, alpha: 1)
    }
    
}
