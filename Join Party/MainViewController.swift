//
//  ViewController.swift
//  Join Party
//
//  Created by Alexei Mashkov on 25.06.2020.
//  Copyright © 2020 Alexei Mashkov. All rights reserved.
//

import UIKit
import MapKit

class MainViewController: UIViewController {
    
    var menuButton = MenuButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        MenuButtonSetup()
    }
    
    func MenuButtonSetup(){
        view.addSubview(menuButton)
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        menuButton.widthAnchor.constraint(equalToConstant: 66).isActive = true
        menuButton.heightAnchor.constraint(equalToConstant: 66).isActive = true
        menuButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -45).isActive = true
        menuButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -45).isActive = true
    }

}

