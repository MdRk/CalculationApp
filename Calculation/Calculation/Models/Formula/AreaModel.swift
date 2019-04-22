//
//  AreaModel.swift
//  Calculation
//
//  Created by 前田陸 on 2019/04/12.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import Foundation

class AreaModel {
    
    // 正方形と長方形と平行四辺形 （マイナスはエラー）
    public func rect(height: Double, width: Double) -> Double {
        return height * width
    }
    
    // 三角形とひし形と扇形　（マイナスはエラー）
    public func triangle(bottom: Double, height: Double) -> Double {
        return bottom * height / 2
    }
    
    // 台形
    public func trapezoid(uBottom: Double, lBottom: Double, height: Double) -> Double {
        return (uBottom + lBottom) * height / 2
    }
    
    // 円 （マイナスはエラー）
    public func circle(radius: Double) -> Double {
        return radius * radius * Double.pi
    }
    
    // 立方体 （マイナスはエラー）
    public func cube(side1: Double) -> Double {
        return side1 * side1 * 6
    }
    
    // 直方体 （マイナスはエラー）
    public func parall(vertical: Double, horizontal: Double, height: Double) -> Double {
        return 2 * ((vertical*horizontal) + (vertical*height) + (horizontal*height))
    }
    
    // 円柱 （マイナスはエラー）
    public func cylinder(radius: Double, height: Double) -> Double {
        return (2 * Double.pi * radius * radius) + (2 * Double.pi * radius * height)
    }
    
    // 円錐（マイナスはエラー）
    public func cone(radius: Double, height: Double) -> Double {
        return (Double.pi * radius * radius) + (Double.pi * radius * sqrt((radius * radius) + (height * height)))
    }
    
    // 球（マイナスはエラー）
    public func ball(radius: Double) -> Double {
        return 4 * Double.pi * (radius * radius)
    }
    
    // 正四面体（マイナスはエラー）
    public func tetrahedron(side: Double) -> Double {
        return sqrt(3) * (side * side)
    }
    
    // 正六面体（マイナスはエラー）
    public func hexahedron(side: Double) -> Double {
        return 6 * (side * side)
    }
    
    // 正八面体（マイナスはエラー）
    public func octahedron(side: Double) -> Double {
        return 2 * sqrt(3) * (side * side)
    }
    
    // 正十二面体（マイナスはエラー）
    public func dodecahedron(side: Double) -> Double {
        return 3 * sqrt(25 + (10 * sqrt(5))) * (side * side)
    }
    
    // 正二十面体（マイナスはエラー）
    public func icosahedron(side: Double) -> Double {
        return 5 * sqrt(3) * (side * side)
    }
    
}
