//
//  BaseCustomNavigationViewController.swift
//  PaulAnimation_Swift
//
//  Created by paul on 2018/5/6.
//  Copyright © 2018年 paul. All rights reserved.
//

import UIKit

class BaseCustomNavigationViewController: UINavigationController {

    convenience init(rootViewController: UIViewController, hideBar : Bool) {
        self.init(rootViewController: rootViewController)
//        rootViewController.us
        setNavigationBarHidden(hideBar, animated: false)
    }
    
    deinit {
        print("[❌] '[NAV] " + String(describing: self.classForCoder) + "' is released.")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        print("[➡️] enter to --> '[NAV] " + String(describing: self.classForCoder) + "'.")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
        super.viewDidDisappear(animated)
        print("[🕒] leave from <-- '[NAV] " + String(describing: self.classForCoder) + "'.")
    }
}
