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
        btn.frame = CGRect(x: self.bounds.midX - 75 , y: self.bounds.minY + 25, width: 60, height: 60)
        btn.layer.cornerRadius = 33
        btn.setImage(UIImage(named: "ChatsButton"), for: .normal)
        return btn
    }
    
    var eventsButton: UIButton{
        let btn = UIButton()
        btn.frame = CGRect(x: self.bounds.midX + 20 , y: self.bounds.minY + 20, width: 60, height: 60)
        btn.setImage(UIImage(named: "EventsButton"), for: .normal)
        return btn
    }
    
    var myEventsButton: UIButton{
        let btn = UIButton()
        btn.frame = CGRect(x: self.bounds.minX + 30, y: self.bounds.midY - 90, width: 60, height: 60)
        btn.setImage(UIImage(named: "MyEventsButton"), for: .normal)
        return btn
    }
    
    var userButton: UIButton{
        let btn = UIButton()
        btn.frame = CGRect(x: self.bounds.minX + 10, y: self.bounds.midY, width: 60, height: 60)
        btn.setImage(UIImage(named: "UserButton"), for: .normal)
        return btn
    }
    
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
        
        self.addSubview(chatsButton)
        self.addSubview(userButton)
        self.addSubview(eventsButton)
        self.addSubview(myEventsButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
