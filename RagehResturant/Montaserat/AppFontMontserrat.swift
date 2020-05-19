//
//  AppFont.swift
//  Jowan
//
//  Created by samy on 10/13/18.
//  Copyright © 2018 samy. All rights reserved.
//

import UIKit

enum MontserratFont: String {
    
    case ExtraBold = "ExtraBold"
    case Regular = "Regular"
    case Medium = "Medium"
    case Bold = "Bold"
    case SemiBold = "SemiBold"
    
   
    
    func with(size: CGFloat) -> UIFont {
        return UIFont(name: "Montserrat-\(rawValue)", size: size)!
    }
}

