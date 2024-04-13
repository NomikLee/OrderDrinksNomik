//
//  MenuViewController.swift
//  OrderDrinksNomik
//
//  Created by Pinocchio on 2024/4/11.
//

import UIKit

class MenuViewController: UIViewController {
    
    let logoImageView = LogoImageView(frame: .zero)
    
    private let menuTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(CollectionMenuTableViewCell.self, forCellReuseIdentifier: CollectionMenuTableViewCell.identifier)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = logoImageView
        
        menuTableView.delegate = self
        menuTableView.dataSource = self
        
        setupMenuUI()
    }
    
    private func setupMenuUI(){
        view.addSubview(menuTableView)
        
        NSLayoutConstraint.activate([
            menuTableView.topAnchor.constraint(equalTo: view.topAnchor),
            menuTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            menuTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            menuTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            
        ])
    }
    
}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionMenuTableViewCell.identifier, for: indexPath) as? CollectionMenuTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
}

#Preview("VC", body: {
    MainTabViewController()
})
