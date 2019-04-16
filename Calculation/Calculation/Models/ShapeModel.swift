//
//  ShapeModel.swift
//  Calculation
//
//  Created by 前田陸 on 2019/04/12.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import Foundation

class ShapeModel {
    
    // sin
    public func fSin(angle: Double) -> Double {
        let angle = sin(rad(angle: angle)) * 10.0
        return round(angle) / 10.0
    }
    
    // cos
    public func fCos(angle: Double) -> Double {
        let angle = cos(rad(angle: angle)) * 10.0
        return round(angle) / 10.0
    }
    
    // tan（-90 < angle < 90）
    public func fTan(angle: Double) -> Double {
        let angle = tan(rad(angle: angle)) * 10.0
        return round(angle) / 10.0
    }
    
    // ラジアン（マイナスはエラー）
    public func rad(angle: Double) -> Double {
        return angle * (Double.pi / 180)
    }
    
    // 三平方の定理 (マイナスはエラー）
    public func threeSquare(notOblique1: Double, notOblique2: Double) -> Double {
        return sqrt((notOblique1 * notOblique1) + (notOblique2 * notOblique2))
    }
    
    // 円周(マイナスはエラー）
    public func circle(radius: Double) -> Double {
        return 2 * Double.pi * radius
    }
    
    // 扇形の弧の長さ(マイナスはエラー）
    public func arc(radius: Double, angle: Double) -> Double {
        return radius * rad(angle: angle)
    }
    
    // 扇形の弦の長さ(マイナスはエラー）
    public func bow(radius: Double, angle: Double) -> Double {
        let angle = angle/2
        return 2 * radius * sin(rad(angle: angle))
    }
    
    // 外接円の半径(マイナスはエラー）
    public func cirRadius(side: Double, angle: Double) -> Double {
        return (side / fSin(angle: angle)) / 2
    }
    
    // 内接円の半径(マイナスはエラー）
    public func inRadius(area: Double, side1: Double, side2: Double, side3: Double) -> Double {
        return (2 * area) / (side1 + side2 + side3)
    }
    
    // 外心における角度１(マイナスはエラー）
    public func outHeart1(angle1: Double, angle2: Double) -> Double {
        return (180 - ((2 * angle1) + (2 * angle2))) / 2
    }
    
    // 外心における角度２(マイナスはエラー）
    public func outHeart2(angle1: Double, angle2: Double) -> Double {
        return (180 - (360 - ((180 - (angle1 + angle2)) * 2))) / 2
    }
    
    // 内心における角度１(マイナスはエラー）
    public func inHeart1(angle1: Double, angle2: Double) -> Double {
        return 90 - (angle1 + angle2)
    }
    
    // 内心における角度２(マイナスはエラー）
    public func inHeart2(angle: Double) -> Double {
        return 180 - ((180 - angle) * 2)
    }
    
    // 内心における角度３(マイナスはエラー）
    public func inHeart3(angle: Double) -> Double {
        return 180 - ((180 - angle) / 2)
    }
}
