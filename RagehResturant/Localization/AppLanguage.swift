//
//  AppLanguage.swift
//  MIC
//
//  Created by samy on 10/15/18.
//  Copyright © 2018 samy. All rights reserved.
//

import Foundation

class AppLanguage {
    class func currentLanguage() -> String {
        let def = UserDefaults.standard
        let langs = def.object(forKey: "AppleLanguages") as! NSArray
        let firstLang = langs.firstObject as! String
        
        return firstLang
    }
    
    class func setAppLanguage(lang: String) {
        let def = UserDefaults.standard
        def.set([lang, currentLanguage()], forKey: "AppleLanguages")
        def.synchronize()
    }
    
}
