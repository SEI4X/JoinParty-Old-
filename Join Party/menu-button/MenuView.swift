//
//  MenuViewController.swift
//  Join Party
//
//  Created by Alexei Mashkov on 26.06.2020.
//  Copyright © 2020 Alexei Mashkov. All rights reserved.
//

import UIKit

class MenuView: UIView {
    
    var chatsButton: UIButton{
        let btn = UIButton()
        btn.frame = CGRect(x: self.bounds.midX - 95 , y: self.bounds.minY + 30, width: 60, height: 60)
        btn.layer.cornerRadius = 33
        let origImage = UIImage(named: "ChatsButton")
        let tintedImage = origImage?.withRenderingMode(.alwaysTemplate)
        btn.tintColor = .white
        btn.setImage(tintedImage, for: .normal)
        return btn
    }
    
    var eventsButton: UIButton{
        let btn = UIButton()
        btn.frame = CGRect(x: self.bounds.midX - 10 , y: self.bounds.minY + 12, width: 60, height: 60)
        let origImage = UIImage(named: "EventsButton")
        let tintedImage = origImage?.withRenderingMode(.alwaysTemplate)
        btn.tintColor = .white
        btn.setImage(tintedImage, for: .normal)
        return btn
    }
    
    var myEventsButton: UIButton{
        let btn = UIButton()
        btn.frame = CGRect(x: self.bounds.minX + 40, y: self.bounds.midY - 100, width: 60, height: 60)
        let origImage = UIImage(named: "MyEventsButton")
        let tintedImage = origImage?.withRenderingMode(.alwaysTemplate)
        btn.tintColor = .white
        btn.setImage(tintedImage, for: .normal)
        
        return btn
    }
    
    var userButton: UIButton{
        let btn = UIButton()
        btn.frame = CGRect(x: self.bounds.minX + 10, y: self.bounds.midY - 20, width: 60, height: 60)
        let origImage = UIImage(named: "UserButton")
        let tintedImage = origImage?.withRenderingMode(.alwaysTemplate)
        btn.tintColor = .white
        btn.setImage(tintedImage, for: .normal)
        return btn
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 0.09, green: 0.29, blue: 0.40, alpha: 1.00)
        self.frame = CGRect(x: 0, y: 0, width: 380, height: 380)
        self.layer.cornerRadius = 190
        
        // Shadow setup
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 3
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        self.addSubview(chatsButton)
        self.addSubview(userButton)
        self.addSubview(eventsButton)
        self.addSubview(myEventsButton)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
