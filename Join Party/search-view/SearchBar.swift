//
//  SearchBar.swift
//  Join Party
//
//  Created by Alexei Mashkov on 27.06.2020.
//  Copyright © 2020 Alexei Mashkov. All rights reserved.
//

import UIKit

class SearchBar: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.placeholder = "Search"
        
        self.borderStyle = .roundedRect
        self.layer.cornerRadius = 30
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
