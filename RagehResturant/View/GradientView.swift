//
//  GradientView.swift
//  SlackClone
//
//  Created by Ahmed on 11/23/19.
//  Copyright © 2019 AhmedDev. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

 
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.3137254902, green: 0.8470588235, blue: 0.5647058824, alpha: 1) {
        didSet{
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.2156862745, green: 0.9294117647, blue: 0.2980392157, alpha: 1) {
        didSet{
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientView = CAGradientLayer()
        gradientView.colors = [topColor.cgColor , bottomColor.cgColor]
        gradientView.startPoint = CGPoint(x: 0, y: 0)
        gradientView.endPoint = CGPoint(x: 1, y: 1)
        gradientView.frame = self.bounds
        self.layer.insertSublayer(gradientView, at: 0)
    }
    
    

}
