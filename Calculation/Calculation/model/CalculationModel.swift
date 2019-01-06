//
//  CalculationModel.swift
//  Calculation
//
//  Created by 前田陸 on 2018/11/30.
//  Copyright © 2018年 陸　前田. All rights reserved.
//

import Foundation

class CalculationModel: NSObject {
    
//引数1
    //円
    func circle(value1: Double) -> Double{
        return (value1 * value1) * 3.14
    }
    
    //立方体の表面積
    func areaCube(value1: Double) -> Double{
        return (value1 * value1) * 6.0
    }
    
    //球体の表面積
    func areaSphere(value1: Double) -> Double{
        return 4.0 * 3.14 * (value1*value1)
    }
    
    //立方体の体積
    func volumeCube(value1: Double) -> Double{
        return value1 * value1 * value1
    }
    
    //球体の体積
    func volumeSphere(value1: Double) -> Double{
        return (3.14 * (value1 * value1 * value1)) * 4 / 3
    }
    
    //円周
    func circumference(value1: Double) -> Double{
        return 2 * 3.14 * value1
    }
    
//引数2
    //加算
    func addition(value1: Double, value2: Double) -> Double{
        return value1 + value2
    }
    
    /*//加算
     func addition <T>(value1: T, value2: T) -> T{
     return value1 + value2
     }*/
    
    //減算
    func subtraction(value1: Double, value2: Double) -> Double{
        return value1 - value2
    }
    
    //乗算
    func multiplication(value1: Double, value2: Double) -> Double{
        return value1 * value2
    }
    
    //除算
    func division(value1: Double, value2: Double) -> Double{
        return value1 / value2
    }
    
    //累乗
    func power(value1: Double, value2: Double) -> Double{
        var answer = 1.0
        if(value2 != 0){
            for _ in 1...Int(value2) {
                answer = multiplication(value1: answer, value2: value1)
            }
        } else if (value1 == 0){
            answer = 0
        }
        return answer
    }
    
    //三角形、ひし形
    func triangle(value1: Double, value2: Double) -> Double{
        return (value1 * value2) / 2.0
    }
    
    //扇形
    func sector1(value1: Double, value2: Double) -> Double{
        return 3.14*value1*value1*(value2/360.0)
    }
    func sector2(value1: Double, value2: Double) -> Double{
        return value1*value2/2.0
    }
    
    //円柱の表面積
    func areaCylinder(value1: Double, value2: Double) -> Double{
        return (2.0*3.14*value1*value1) + (2.0*3.14*value1*value2)
    }
    
    //円錐の表面積
    func areaCone(value1: Double, value2: Double) -> Double{
        return (3.14 * (value1*value1)) + (3.14 * value1 * value2)
    }
    
    //円柱の体積
    func volumeCylinder(value1: Double, value2: Double) -> Double{
        return 3.14 * (value1 * value1) * value2
    }
    
    //四角錐の体積
    func volumeSquarePyramid(value1: Double, value2: Double) -> Double{
        return (value1 * value2) / 3
    }
    
    //円錐の体積
    func volumeCone(value1: Double, value2: Double) -> Double{
        return (3.14 * (value1 * value1) * value2) / 3
    }
    
    //扇形の弧
    func fanArc(value1: Double, value2: Double) -> Double{
        return multiplication(value1: circumference(value1: value1), value2: division(value1: value2, value2: 360))
    }
    
//引数3
    //台形
    func trapezoid(value1: Double, value2: Double, value3: Double) -> Double{
        return (value1+value2)*value3/2.0
    }
    
    //直方体の表面積
    func areaCuboid(value1: Double, value2: Double, value3: Double) -> Double{
        return 2.0 * ((value1*value2) + (value2*value3) + (value3*value1))
    }
    
    //四角錐の表面積
    func areaSquarePyramid(value1: Double, value2: Double, value3: Double) -> Double{
        return (value1*value2) + (value1 * sqrt(value3*value3 + (value2/2.0)*(value2/2.0))) + (value2 * sqrt(value3*value3 + (value1/2.0)*(value1/2.0)))
    }
    
    //直方体の体積
    func volumeCuboid(value1: Double, value2: Double, value3: Double) -> Double{
        return value1 * value2 * value3
    }
}
