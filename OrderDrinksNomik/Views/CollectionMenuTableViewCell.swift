//
//  CollectionMenuTableViewCell.swift
//  OrderDrinksNomik
//
//  Created by Pinocchio on 2024/4/12.
//

import UIKit

class CollectionMenuTableViewCell: UITableViewCell {

    static let identifier = "CollectionMenuTableViewCell"
    
    lazy var segmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl(items: [
                "找好茶", "找奶茶", "找拿鐵", "找新鮮"
            ])
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.setTitleTextAttributes([
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 25),
            NSAttributedString.Key.foregroundColor: UIColor.white
        ], for: .normal)
        segmentedControl.selectedSegmentTintColor = UIColor(red: 0, green: 51/256, blue: 102/256, alpha: 1)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.backgroundColor = UIColor.systemBrown
        segmentedControl.addTarget(self, action: #selector(pageChange), for: .valueChanged)

        return segmentedControl
    }()
    
//    private let collectionMenu:
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = UIColor(red: 0, green: 51/256, blue: 102/256, alpha: 1)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(segmentedControl)
        
        NSLayoutConstraint.activate([
            segmentedControl.topAnchor.constraint(equalTo: contentView.topAnchor),
            segmentedControl.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            segmentedControl.widthAnchor.constraint(equalToConstant: 393),
            segmentedControl.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func pageChange() {
        switch segmentedControl.selectedSegmentIndex {
        case 1:
            contentView.backgroundColor = UIColor.white
        case 2:
            contentView.backgroundColor = UIColor.green
        case 3:
            contentView.backgroundColor = UIColor.systemBlue
        default:
            contentView.backgroundColor = UIColor(red: 0, green: 51/256, blue: 102/256, alpha: 1)
        }
    }
    

}

#Preview("VC", body: {
    MainTabViewController()
})
