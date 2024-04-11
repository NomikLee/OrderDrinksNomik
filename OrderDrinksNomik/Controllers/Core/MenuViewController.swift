//
//  MenuViewController.swift
//  OrderDrinksNomik
//
//  Created by Pinocchio on 2024/4/11.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "五十嵐"
        view.backgroundColor = .systemYellow
//        setupNavImage()
    }
    
//    private func setupNavImage() {
//        let imageView = UIImageView()
//        imageView.image = UIImage(named: "柴")
//        imageView.contentMode = .scaleAspectFill
//        imageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        imageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
//        navigationItem.titleView = imageView
//    }
}

#Preview("VC", body: {
    MainTabViewController()
})
