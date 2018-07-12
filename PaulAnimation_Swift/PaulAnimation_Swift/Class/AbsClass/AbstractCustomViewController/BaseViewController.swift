//
//  BaseViewController.swift
//  PaulAnimation_Swift
//
//  Created by paul on 2018/5/6.
//  Copyright © 2018年 paul. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, UIGestureRecognizerDelegate {
    
    let windowAreaViewId  = "windowAreaViewId"
    let loadingViewAreaId = "loadingViewAreaId"
    let titleViewId       = "titleViewId"
    let contentViewId     = "contentViewId"
    let backgroundViewId  = "backgroundViewId"
    
    var windowAreaView    : ShowLoadingView?
    var laodAreaView      : ShowLoadingView?
    var titileView        : UIView?
    var contentView       : UIView?
    var backgroundView    : UIView?
    
    fileprivate var viewConfigs : [String : ControllerBaseViewConfig] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        automaticallyAdjustsScrollViewInsets = false
        
    }
    
    // MARK: -- Private methods --
    
    private func initViewController(){
        let width  = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        
        // backgroundView config.
        do{
            let config                    = ControllerBaseViewConfig()
            config.backgroundColor        = UIColor.white
            config.exist                  = true
            config.frame                  = CGRect(x: 0, y: 0, width: width, height: height)
            viewConfigs[backgroundViewId] = config
        }
        
        // contentView config
        do{
            let config                    = ControllerBaseViewConfig()
            config.backgroundColor        = UIColor.clear
            config.exist                  = true
            config.frame                  = CGRect(x: 0, y: 0, width: width, height: height - 64)
            viewConfigs[contentViewId]    = config
        }
        
        // titView config
        do{
            let config                    = ControllerBaseViewConfig()
            config.backgroundColor        = UIColor.clear
            config.exist                  = true
            config.frame                  = CGRect(x: 0, y: 64, width: width, height: 64)
            viewConfigs[titleViewId]      = config
        }
        
        // loadingView config
        do{
            let config                     = ControllerBaseViewConfig()
            config.backgroundColor         = UIColor.clear
            config.exist                   = true
            config.frame                   = CGRect(x:0, y:64, width:width, height:height - 64)
            viewConfigs[loadingViewAreaId] = config
        }
        
        // windowView config
        do{
            let config                     = ControllerBaseViewConfig()
            config.exist                   = true
            config.backgroundColor         = UIColor.clear
            config.frame                   = CGRect(x:0, y:0, width:width, height:height)
            viewConfigs[windowAreaViewId]  = config
        }
    }
}
