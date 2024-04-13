//
//  MenuViewController.swift
//  OrderDrinksNomik
//
//  Created by Pinocchio on 2024/4/11.
//

import UIKit

class MenuViewController: UIViewController {
    
    let logoImageView = LogoImageView(frame: .zero)
    
    private let collectionMenuView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(CollectionViewMenuCell.self, forCellWithReuseIdentifier: CollectionViewMenuCell.identifier)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = UIColor(red: 0, green: 51/256, blue: 102/256, alpha: 1)
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = logoImageView
        
        collectionMenuView.delegate = self
        collectionMenuView.dataSource = self
        
        setupMenuUI()
    }
    
    private func setupMenuUI(){
        view.addSubview(collectionMenuView)
        
        NSLayoutConstraint.activate([
            collectionMenuView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionMenuView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionMenuView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionMenuView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            
        ])
    }
    
}

extension MenuViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewMenuCell.identifier, for: indexPath) as? CollectionViewMenuCell else { return UICollectionViewCell() }
        return cell
    }
    
}

#Preview("VC", body: {
    MainTabViewController()
})
