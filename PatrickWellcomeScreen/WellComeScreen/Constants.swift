//
//  Constants.swift
//  PatrickWellcomeScreen
//
//  Created by Pratik on 07/03/18.
//  Copyright © 2018 Pratik. All rights reserved.
//

import Foundation


struct AppUserDefaults {

    //MARK: - Userdefault

    private static let IsLogin = "IsLogin"
    private static let IsFirstTimeAppOpen = "FirstTimeAppOpen"

    
    static var isLogin:Bool {
        get {return UserDefaults.standard.bool(forKey:IsLogin)}
        set(v) {UserDefaults.standard.set(v, forKey: IsLogin)}
    }
    
    static var isFirstTimeAppOpen:Bool {
        get {return UserDefaults.standard.bool(forKey:IsFirstTimeAppOpen)}
        set(v) {UserDefaults.standard.set(v, forKey: IsFirstTimeAppOpen)}
    }
}

