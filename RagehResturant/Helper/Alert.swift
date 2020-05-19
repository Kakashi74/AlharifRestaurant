//
//  Alert.swift
//  MainTravel
//
//  Created by Ahmed on 12/19/19.
//  Copyright © 2019 AhmedDev. All rights reserved.
//

import UIKit

class Alert {
    
    // show Alert with dismiss
    class func showAlertDismiss(target: UIViewController, title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let colorNormal: UIColor = UIColor.black
        let titleFontAll: UIFont = MontserratFont.Regular.with(size: 16)
        alert.setValue(NSAttributedString(string: title, attributes: [NSAttributedString.Key.foregroundColor : colorNormal, NSAttributedString.Key.font: titleFontAll]), forKey: "attributedTitle")
        alert.setValue(NSAttributedString(string: message, attributes: [NSAttributedString.Key.foregroundColor : colorNormal, NSAttributedString.Key.font: MontserratFont.Regular.with(size: 13)]), forKey: "attributedMessage")
        alert.addAction(UIAlertAction(title: "Dismiss".localized(), style: .default, handler: nil))
        alert.view.tintColor = #colorLiteral(red: 0, green: 0.6668914557, blue: 1, alpha: 1)
        target.present(alert, animated: true, completion: nil)
    }
    
    // Show Alert
    class func showAlert(target: UIViewController, title: String, message: String, okAction: String, cancel: String?, actionStyle: UIAlertAction.Style, actionCompletion: ((UIAlertAction) -> Void)?) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let colorNormal: UIColor = UIColor.black
        let titleFontAll: UIFont = MontserratFont.Regular.with(size: 16)
        alert.setValue(NSAttributedString(string: title, attributes: [NSAttributedString.Key.foregroundColor : colorNormal, NSAttributedString.Key.font: titleFontAll]), forKey: "attributedTitle")
        alert.setValue(NSAttributedString(string: message, attributes: [NSAttributedString.Key.foregroundColor : colorNormal, NSAttributedString.Key.font: MontserratFont.Regular.with(size: 13)]), forKey: "attributedMessage")
        alert.addAction(UIAlertAction(title: okAction, style: actionStyle, handler: actionCompletion))
        if cancel != nil {
            alert.addAction(UIAlertAction(title: cancel, style: actionStyle, handler: nil))
        }
        alert.view.tintColor = #colorLiteral(red: 0, green: 0.6788182855, blue: 1, alpha: 1) // Change Color
        target.present(alert, animated: true, completion: nil)
    }
    
}

