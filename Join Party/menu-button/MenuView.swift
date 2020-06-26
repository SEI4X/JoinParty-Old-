//
//  MenuViewController.swift
//  Join Party
//
//  Created by Alexei Mashkov on 26.06.2020.
//  Copyright © 2020 Alexei Mashkov. All rights reserved.
//

import UIKit

class MenuView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 0.90625, green: 0.30078, blue: 0.53906, alpha: 1)
        self.frame = CGRect(x: 0, y: 0, width: 350, height: 350)
        self.layer.cornerRadius = 175
        
        // Shadow setup
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 3
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
