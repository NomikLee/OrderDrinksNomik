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
        
        appearance.backgroundColor = .systemYellow
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        appearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        
        navigationBar.standardAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
        navigationBar.compactAppearance = appearance
        
        UITabBar.appearance().tintColor = .black
        UITabBar.appearance().barTintColor = .black
        UITabBar.appearance().backgroundColor = .systemYellow
    }
    
}
