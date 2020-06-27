//
//  MenuButtonViewController.swift
//  Join Party
//
//  Created by Alexei Mashkov on 26.06.2020.
//  Copyright © 2020 Alexei Mashkov. All rights reserved.
//

import UIKit

class MenuButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame = CGRect(x: 0, y: 0, width: 66, height: 66)
        self.layer.cornerRadius = 33
        self.backgroundColor = UIColor(red: 0.09, green: 0.29, blue: 0.40, alpha: 1.00)
        let origImage = UIImage(named: "MenuButton")
        let tintedImage = origImage?.withRenderingMode(.alwaysTemplate)
        self.setImage(tintedImage, for: .normal)
        self.tintColor = .white
        
        // Button shadow
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 4
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
