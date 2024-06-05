//
//  MainViewController.swift
//  TestApp
//
//  Created by Helen Gao on 6/5/24.
//

import UIKit

class MainViewController: UIViewController {
    
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        label.text = "Main View Controller"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    func handleDeepLink(_ deepLink: DeepLink) {
        switch deepLink {
        case .home:
            print("Navigated to Home")
            label.text = "Navigated to Home"
        case .scan:
            print("Navigated to Scan")
            label.text = "Navigated to Scan"
        }
    }
}
