//
//  RootNavigationViewController.swift
//  PaulAnimation_Swift
//
//  Created by paul on 2018/5/6.
//  Copyright © 2018年 paul. All rights reserved.
//

import UIKit

class RootNavigationViewController: BaseCustomNavigationViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let lauchImageView   = UIImageView(frame: self.view.bounds)
        lauchImageView.image = AppleSysService.LaunchImage
        view.addSubview(lauchImageView)
        
        UIView.animate(withDuration: 1, delay: 1, options: UIViewAnimationOptions(), animations: {
            
//            lauchImageView.scale = 1.3
            lauchImageView.alpha = 0
            
        }) { _ in
            
            lauchImageView.removeFromSuperview()
//            DefaultNotificationCenter.PostMessageTo(NotificationEvent.animationsListViewControllerFirstTimeLoadData.notificationName)
        }
    }
}
