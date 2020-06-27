//
//  ListButton.swift
//  Join Party
//
//  Created by Alexei Mashkov on 26.06.2020.
//  Copyright © 2020 Alexei Mashkov. All rights reserved.
//

import UIKit

class FilterButton: UIButton {
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.cornerRadius = 27
        self.backgroundColor = UIColor(red: 0.91, green: 0.11, blue: 0.71, alpha: 1.00)
        let origImage = UIImage(named: "Filter")
        let tintedImage = origImage?.withRenderingMode(.alwaysTemplate)
        self.tintColor = .white
        self.setImage(tintedImage, for: .normal)
        
        // Button shadow
//        self.layer.shadowColor = UIColor.black.cgColor
//        self.layer.shadowRadius = 3
//        self.layer.shadowOpacity = 0.5
//        self.layer.shadowOffset = CGSize(width: 0, height: 1)
    }
    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }
}
