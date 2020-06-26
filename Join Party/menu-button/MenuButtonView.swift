//
//  MenuButtonViewController.swift
//  Join Party
//
//  Created by Alexei Mashkov on 26.06.2020.
//  Copyright © 2020 Alexei Mashkov. All rights reserved.
//

import UIKit

class MenuButton: UIButton {
    
    var buttonStatus: Bool = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame = CGRect(x: 0, y: 0, width: 66, height: 66)
        self.layer.cornerRadius = 33
        self.backgroundColor = UIColor(red: 0.90625, green: 0.30078, blue: 0.53906, alpha: 1)
        self.setImage(UIImage(named: "MenuButton"), for: .normal)
        
        // Button shadow
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 3
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        self.addTarget(self, action: #selector(ButtonTouchDown), for: .touchDown)
        self.addTarget(self, action: #selector(ButtonTouchUpInside), for: .touchUpInside)
        self.addTarget(self, action: #selector(ButtonTouchUpOutside), for: .touchUpOutside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Animation when touch down
    @objc func ButtonTouchDown(){
        TouchDownAnimation()
    }
    
    // Animation when touch up inside
    @objc func ButtonTouchUpInside(){
        if buttonStatus == true {
            buttonStatus = false
        } else {
            buttonStatus = true
        }
        
        TouchUpInsideAnimation()
    }
    
    // Animation when touch up outside
    @objc func ButtonTouchUpOutside(){
        TouchUpOutsideAnimation()
    }
    
    func TouchDownAnimation(){
        UIView.animate(withDuration: 0.1) {
            if self.transform == .identity {
                self.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            }
        }
    }
    
    func TouchUpInsideAnimation(){
        UIView.animate(withDuration: 0.1) {
            self.transform = CGAffineTransform(scaleX: 1, y: 1)
            if self.buttonStatus == true {
                self.transform = CGAffineTransform(rotationAngle: -45 * (.pi / 180))
                self.layer.shadowOpacity = 0
            } else {
                self.layer.shadowOpacity = 0.5
            }
        }
    }
    
    func TouchUpOutsideAnimation(){
        UIView.animate(withDuration: 0.1) {
            if self.transform == .identity || self.buttonStatus == false {
                self.transform = CGAffineTransform(scaleX: 1, y: 1)
            } else {
                
            }
        }
    }
}
