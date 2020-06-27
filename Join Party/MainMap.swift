//
//  MainMap.swift
//  Join Party
//
//  Created by Alexei Mashkov on 27.06.2020.
//  Copyright © 2020 Alexei Mashkov. All rights reserved.
//

import UIKit
import MapKit

class MainMap: MKMapView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let legalLabel = self.subviews[1]
        legalLabel.center = CGPoint(x: self.frame.minX + 30, y: self.frame.maxY - 20)
    }
    
}
