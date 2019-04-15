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
    func rect(height: Double, width: Double) -> Double {
        return height * width
    }
    
    // 三角形とひし形と扇形　（マイナスはエラー）
    func triangle(bottom: Double, height: Double) -> Double {
        return bottom * height / 2
    }
    
    // 台形
    func trapezoid(uBottom: Double, lBottom: Double, height: Double) -> Double {
        return (uBottom + lBottom) * height / 2
    }
    
    // 円 （マイナスはエラー）
    func circle(radius1: Double, radius2: Double) -> Double {
        return radius1 * radius2 * 3.14
    }
    
    // 立方体 （マイナスはエラー）
    func cube(side1: Double) -> Double {
        return side1 * side1 * 6
    }
    
    // 直方体 （マイナスはエラー）
    func parall(vertical: Double, horizontal: Double, height: Double) -> Double {
        return 2 * ((vertical*horizontal) + (vertical*height) + (horizontal*height))
    }
    
    // 円柱 （マイナスはエラー）
    func cylinder(radius: Double, height: Double) -> Double {
        return (2 * 3.14 * radius * radius) + (2 * 3.14 * radius * height)
    }
    
    // 円錐（マイナスはエラー）
    func cone(radius: Double, height: Double) -> Double {
        return (3.14 * radius * radius) + (3.14 * radius * sqrt((radius * radius) + (height * height)))
    }
    
    // 球（マイナスはエラー）
    func ball(radius: Double) -> Double {
        return 4 * 3.14 * (radius * radius)
    }
    
    // 正四面体（マイナスはエラー）
    func tetrahedron(side: Double) -> Double {
        return sqrt(3) * (side * side)
    }
    
    // 正六面体
    func hexahedron(side: Double) -> Double {
        return 6 * (side * side)
    }
    
    // 正八面体
    func octahedron(side: Double) -> Double {
        return 2 * sqrt(3) * (side * side)
    }
    
    // 正十二面体
    func dodecahedron(side: Double) -> Double {
        return 3 * sqrt(25 + (10 * sqrt(5))) * (side * side)
    }
    
    // 正二十面体
    func icosahedron(side: Double) -> Double {
        return 5 * sqrt(3) * (side * side)
    }
    
}
