//
//  Power.swift
//  Calculation
//
//  Created by 前田陸 on 2019/05/20.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import Foundation
import UIKit

class Power {
    
    public var backImage: UIImageView!
    public var testNum: Int!
    public var testX: [CGFloat]!
    public var testY: [CGFloat]!
    public var testWidth: [CGFloat]!
    public var testHeight: [CGFloat]!
    
    // 累乗　（num2がマイナスか小数でエラー）
    public func powerCal(num1: Double, num2: Int) -> String {
        var answer = 1.0
        
        if num1 == 0 {
            return String(0)
        } else if num2 == 0 {
            return String(1)
        }
        
        for _ in 1...num2 {
            answer *= num1
        }
        return String(answer)
    }
    
    init() {
        backImage = UIImageView(image: UIImage(named: "累乗"))
        testNum = 2
        
    }
}
