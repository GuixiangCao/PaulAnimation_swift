//
//  ShowLoadingView.swift
//  PaulAnimation_Swift
//
//  Created by paul on 2018/5/6.
//  Copyright © 2018年 paul. All rights reserved.
//

import UIKit

class ShowLoadingView: UIView {

    public private(set) var count : Int = 0 {
        didSet{
            
            if count >= 1 {
                
            }else{
                
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.isUserInteractionEnabled = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK:- 对外
extension ShowLoadingView  {
    public func push(){
        count += 1
    }
    
    public func pop() {
        count -= 1
    }
}
