//
//  AppleSysService.swift
//  PaulAnimation_Swift
//
//  Created by paul on 2018/5/6.
//  Copyright © 2018年 paul. All rights reserved.
//

import UIKit

class AppleSysService: NSObject {
    
    class var LaunchImage : UIImage {
        get {
            var lauchImage     : UIImage!
            var viewOrientaion : String!
            let viewSize       = UIScreen.main.bounds.size
            let orientation    = UIApplication.shared.statusBarOrientation
            
            if orientation == .landscapeLeft || orientation == .landscapeRight {
                
                viewOrientaion = "Landscape"
            }else{
                viewOrientaion = "Portrait"
            }
            
            let imagesInfoArray = Bundle.main.infoDictionary!["UILaunchImages"]
            for dict : Dictionary <String, String> in imagesInfoArray as! Array {
                
                let imageSize = CGSizeFromString(dict["UILaunchImageSize"]!)
                if imageSize.equalTo(viewSize) && viewOrientaion == dict["UILaunchImageOrientation"]! as String {
                    
                    lauchImage = UIImage(named: dict["UILaunchImageName"]!)
                }
            }
            return lauchImage
        }
    }
}
