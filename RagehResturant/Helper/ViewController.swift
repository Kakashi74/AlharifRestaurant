//
//  ViewController.swift
//  Sallah
//
//  Created by Ahmed on 12/21/19.
//  Copyright © 2019 AhmedDev. All rights reserved.
//

import Foundation
import UIKit
import Cosmos

extension UIViewController {
    func showAlert(title: String , message: String) {
        let alert = UIAlertController(title: title as String, message: message as String, preferredStyle:.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler:nil))
        alert.setValue(NSAttributedString(string: message, attributes: [NSAttributedString.Key.font: MontserratFont.Regular.with(size: 13)]), forKey: "attributedMessage")
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func responseToOffline() {
        
        
        let viewController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NoConnectionVC") as! NoConnectionVC
        
        viewController.modalPresentationStyle = .overCurrentContext
        viewController.modalTransitionStyle = .crossDissolve
        self.present(viewController, animated: true, completion: nil)
    }
}

extension UIViewController
{
  
    // present
    func presentDetails(viewControllerToPresent: UIViewController) {
     let transition : CATransition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        present(viewControllerToPresent, animated: false, completion: nil)
    }
    
    // dismiss
    func dismissDetails() {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
       self.view.window?.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    }
}
