//
//  VolumeModel.swift
//  Calculation
//
//  Created by 前田陸 on 2019/04/12.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import Foundation

class VolumeModel {
    
    // 立方体（マイナスはエラー）
    func cube(side: Double) -> Double {
        return side * side * side
    }
    
    // 直方体（マイナスはエラー）
    func parall(vertical: Double, horizontal: Double, height: Double) -> Double {
        return vertical * horizontal * height
    }
    
    // 角錐（マイナスはエラー）
    func pyramid(botArea: Double, height: Double) -> Double {
        return (botArea * height) / 3
    }
    
    // 角柱（マイナスはエラー）
    func sColumn(botArea: Double, height: Double) -> Double {
        return botArea * height
    }
    
    // 円錐（マイナスはエラー）
    func cone(radius: Double, height: Double) -> Double {
        return (Double.pi * (radius * radius) * height) / 3
    }
    
    // 円柱（マイナスはエラー）
    func cylinder(radius: Double, height: Double) -> Double {
        return Double.pi * (radius * radius) * height
    }
    
    // 球（マイナスはエラー）
    func ball(radius: Double) -> Double {
        return (4 * Double.pi * (radius * radius * radius)) / 3
    }
    
    // 正四面体（マイナスはエラー）
    func tetrahedron(side: Double) -> Double {
        return (sqrt(2) * (side * side * side)) / 12
    }
    
    // 正六面体（マイナスはエラー）
    func hexahedron(side: Double) -> Double {
        return side * side * side
    }
    
    // 正八面体（マイナスはエラー）
    func octahedron(side: Double) -> Double {
        return (sqrt(2) * (side * side * side)) / 3
    }
    
    // 正十二面体（マイナスはエラー）
    func dodecahedron(side: Double) -> Double {
        return ((15 + (7 * sqrt(5))) * (side * side * side)) / 4
    }
    
    // 正二十面体（マイナスはエラー）
    func icosahedron(side: Double) -> Double {
        return (5 * (3 + sqrt(5)) * (side * side * side)) / 12
    }
}
