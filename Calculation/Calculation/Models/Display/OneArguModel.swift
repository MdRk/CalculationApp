//
//  OneArguModel.swift
//  Calculation
//
//  Created by 前田陸 on 2019/04/22.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import Foundation
import UIKit

class OneArguModel {
    
    // 2進数、16進数、約数の個数、親和数、ラジアン
    public func oneText(frameView: UIView, argTextField: UITextField) {
        
        argTextField.isHidden = false
        
        let groundView = UIView()
        
        groundView.frame = CGRect(x: 0, y: 0, width: frameView.frame.width, height: frameView.frame.height)
        
        argTextField.frame = CGRect(x: 0, y: 0, width: groundView.frame.width/5, height: groundView.frame.height/10)
        argTextField.center = CGPoint(x: groundView.center.x, y: groundView.center.y)
        argTextField.backgroundColor = .white
    }
}
