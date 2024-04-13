//
//  LogoImageView.swift
//  OrderDrinksNomik
//
//  Created by Pinocchio on 2024/4/12.
//

import UIKit

class LogoImageView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupNavImage()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupNavImage() {
        image = UIImage(named: "50icon")
        contentMode = .scaleAspectFill
        heightAnchor.constraint(equalToConstant: 1).isActive = true
        widthAnchor.constraint(equalToConstant: 150).isActive = true
    }
}
