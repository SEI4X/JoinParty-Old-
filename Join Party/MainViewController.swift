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
    
    let menuButton = MenuButton()
    let menuView = MenuView()
    var buttonStatus: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        MenuViewSetup()
        MenuButtonSetup()
    }
    
    func MenuButtonSetup(){
        view.addSubview(menuButton)
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        menuButton.widthAnchor.constraint(equalToConstant: 66).isActive = true
        menuButton.heightAnchor.constraint(equalToConstant: 66).isActive = true
        menuButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -45).isActive = true
        menuButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -45).isActive = true
        
        menuButton.addTarget(self, action: #selector(ButtonTouchDown), for: .touchDown)
        menuButton.addTarget(self, action: #selector(ButtonTouchUpInside), for: .touchUpInside)
        menuButton.addTarget(self, action: #selector(ButtonTouchUpOutside), for: .touchUpOutside)
    }
    
    func MenuViewSetup(){
        view.addSubview(menuView)
        menuView.translatesAutoresizingMaskIntoConstraints = false
        menuView.widthAnchor.constraint(equalToConstant: 350).isActive = true
        menuView.heightAnchor.constraint(equalToConstant: 350).isActive = true
        menuView.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -86).isActive = true
        menuView.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -86).isActive = true
        self.menuView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
    }
    
//MARK: MainButton targets
    @objc func ButtonTouchDown(){
        MainButtonTouchDownAnimation()
    }
    
    @objc func ButtonTouchUpInside(){
        if buttonStatus == true {
            buttonStatus = false
        } else {
            buttonStatus = true
        }
        
        MainButtonTouchUpInsideAnimation()
    }
    
    @objc func ButtonTouchUpOutside() {
        MainButtonTouchUpOutsideAnimation()
        
    }
    
//MARK: MainButton animations
    
    func MainButtonTouchDownAnimation(){
        UIView.animate(withDuration: 0.07) {
            if self.menuButton.transform == .identity {
                self.menuButton.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            }
        }
    }
    
    func MainButtonTouchUpInsideAnimation(){
        UIView.animate(withDuration: 0.07) {
            self.menuButton.transform = CGAffineTransform(scaleX: 1, y: 1)
            if self.buttonStatus == true {
                self.menuButton.layer.shadowOpacity = 0
                self.menuButton.transform = CGAffineTransform(rotationAngle: -45 * (.pi / 180))
                self.menuView.transform = CGAffineTransform(scaleX: 1, y: 1)
            } else {
                self.menuButton.layer.shadowOpacity = 0.5
                self.menuView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            }
        }
    }
    
    func MainButtonTouchUpOutsideAnimation(){
        UIView.animate(withDuration: 0.07) {
            if self.menuButton.transform == .identity || self.buttonStatus == false {
                self.menuButton.transform = .identity
            } else {
                
            }
        }
    }

}

