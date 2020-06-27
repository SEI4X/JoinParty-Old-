//
//  MinorMenu.swift
//  Join Party
//
//  Created by Alexei Mashkov on 27.06.2020.
//  Copyright © 2020 Alexei Mashkov. All rights reserved.
//

import UIKit

class MinorMenu: UIView {

    let filterButton = FilterButton()
    let listButton = ListButton()
    let searchBar = SearchBar()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        FilterButtonSetUp()
        SearchBarSetUp()
        ListButtonSetUp()
        self.layer.cornerRadius = 33
        
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 3
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//MARK: FilterButton setups
    func FilterButtonSetUp(){
        self.addSubview(filterButton)
        filterButton.translatesAutoresizingMaskIntoConstraints = false
        filterButton.widthAnchor.constraint(equalToConstant: 54).isActive = true
        filterButton.heightAnchor.constraint(equalToConstant: 54).isActive = true
        filterButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        filterButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: +6).isActive = true
    }
    
//MARK: ListButton setups
    func ListButtonSetUp(){
        self.addSubview(listButton)
        listButton.translatesAutoresizingMaskIntoConstraints = false
        listButton.widthAnchor.constraint(equalToConstant: 54).isActive = true
        listButton.heightAnchor.constraint(equalToConstant: 54).isActive = true
        listButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        listButton.leadingAnchor.constraint(equalTo: searchBar.trailingAnchor, constant: +6).isActive = true
    }
    
//MARK: SearchBar setups
    func SearchBarSetUp(){
        self.addSubview(searchBar)
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.widthAnchor.constraint(equalToConstant: 168).isActive = true
        searchBar.heightAnchor.constraint(equalToConstant: 54).isActive = true
        searchBar.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        searchBar.leadingAnchor.constraint(equalTo: filterButton.trailingAnchor, constant: +6).isActive = true
    }
}
