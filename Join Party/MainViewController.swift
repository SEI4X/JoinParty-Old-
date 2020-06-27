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
    let minorMenu = MinorMenu()
    let menuView = MenuView()
    var buttonStatus: Bool = false
    let map = MainMap()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MapSetUp()
        MenuViewSetUp()
        MenuButtonSetUp()
        MinorMenuSetUp()
    }
    
//MARK: MinorButton setups
    func MinorMenuSetUp(){
        view.addSubview(minorMenu)
        minorMenu.translatesAutoresizingMaskIntoConstraints = false
        minorMenu.heightAnchor.constraint(equalToConstant: 66).isActive = true
        minorMenu.widthAnchor.constraint(equalToConstant: 300).isActive = true
        minorMenu.topAnchor.constraint(equalTo: view.topAnchor, constant: +60).isActive = true
        minorMenu.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    
//MARK: MainButton setups
    func MenuButtonSetUp(){
        view.addSubview(menuButton)
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        menuButton.widthAnchor.constraint(equalToConstant: 66).isActive = true
        menuButton.heightAnchor.constraint(equalToConstant: 66).isActive = true
        menuButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -25).isActive = true
        menuButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        
        menuButton.addTarget(self, action: #selector(ButtonTouchDown), for: .touchDown)
        menuButton.addTarget(self, action: #selector(ButtonTouchUpInside), for: .touchUpInside)
        menuButton.addTarget(self, action: #selector(ButtonTouchUpOutside), for: .touchUpOutside)
    }
    
    func MenuViewSetUp(){
        view.addSubview(menuView)
        menuView.translatesAutoresizingMaskIntoConstraints = false
        menuView.widthAnchor.constraint(equalToConstant: 380).isActive = true
        menuView.heightAnchor.constraint(equalToConstant: 380).isActive = true
        menuView.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -62).isActive = true
        menuView.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -65).isActive = true
        
        self.menuView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
    }

    @objc func ButtonTouchDown(){
        MainButtonTouchDownAnimation()
    }
    
    @objc func ButtonTouchUpInside(){
        if buttonStatus == true { buttonStatus = false } else { buttonStatus = true }
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
                self.menuView.eventsButton.tintColor = UIColor(red: 0.39, green: 0.77, blue: 0.92, alpha: 1)
            } else {
                self.menuButton.layer.shadowOpacity = 0.5
                self.menuView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                self.menuView.eventsButton.tintColor = .white
                //self.menuButton.backgroundColor = UIColor(red: 0.90625, green: 0.30078, blue: 0.53906, alpha: 1)
            }
        }
    }
    
    func MainButtonTouchUpOutsideAnimation(){
        UIView.animate(withDuration: 0.07) {
            if self.menuButton.transform == .identity || self.buttonStatus == false {
                self.menuButton.transform = .identity
            }
        }
    }
    
//MARK: Map setups
    func MapSetUp(){
        view.addSubview(map)
        map.translatesAutoresizingMaskIntoConstraints = false
        map.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        map.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        map.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        map.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }

}

