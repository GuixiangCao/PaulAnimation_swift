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
}
