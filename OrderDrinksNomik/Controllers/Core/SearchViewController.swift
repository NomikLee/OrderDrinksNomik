//
//  SearchViewController.swift
//  OrderDrinksNomik
//
//  Created by Pinocchio on 2024/4/11.
//

import UIKit

class SearchViewController: UIViewController {
    
    let logoImageView = LogoImageView(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "搜索"
        navigationItem.titleView = logoImageView
        view.backgroundColor = UIColor(red: 0, green: 51/256, blue: 102/256, alpha: 1)
        
    }
}
