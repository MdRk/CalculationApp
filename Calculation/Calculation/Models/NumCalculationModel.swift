//
//  NumCalculationModel.swift
//  Calculation
//
//  Created by 前田陸 on 2019/04/12.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import Foundation

class NumCalculationModel {
    
    // 累乗　（num2がマイナスか小数でエラー）
    func power(num1: Double, num2: Int) -> String {
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
    
    // 平方根（マイナスか小数でエラー）
    func root(num1: Int) -> String {
        return String(sqrt(Double(num1)))
    }
    
    // 三角数　（マイナスか小数でエラー）
    func triNumber(num1: Int) -> String {
        return String((num1*(num1+1))/2)
    }
    
    // 四角数　（マイナスか小数でエラー）
    func squareNumber(num1: Int) -> String {
        return String(num1*num1)
    }
    
    // ガウス記号　
    func gauss(num1: Double) -> String {
        let difference = num1 - floor(num1)
        if num1 < 0 && difference != 0{
            return String(Int(num1-1))
        }
        return String(Int(num1))
    }
    
    // 2進数 （小数はエラー）
    func binary(num1: Int) -> String {
        let answer = String(num1, radix: 2)
        return answer
    }
    
    // 16進数 （小数はエラー）
    func hexadecimal(num1: Int) -> String {
        return String(num1, radix: 16)
    }
    
    // 最大公約数 （マイナスと小数はエラー）
    func GCD(num1: Int, num2: Int) -> String {
        var num1 = num1
        var num2 = num2
        
        if num2 > num1 {
            let num3 = num1
            num1 = num2
            num2 = num3
        }
        // ユークリッドの互除法
        var num4: Int
        while num2 != 0 {
            num4 = num1 % num2
            num1 = num2
            num2 = num4
        }
        
        return String(num1)
    }
    
    // 最小公倍数 （マイナスと小数はエラー）
    func LCM(num1: Int, num2: Int) -> String {
        return String((num1/Int(GCD(num1: num1, num2: num2))!) * num2)
    }
    
    // 約数の個数 （自然数のみ）
    func divisorQuantity(num1: Int) -> String {
        var num1 = num1
        var primeNum: [Int] = []
        var count = 0
        var counts: [Int] = []
        
        // 素因数分解
        for x in 2...num1 {
            while num1 % x == 0 {
                primeNum.append(x)
                num1 /= x
                count += 1
            }
            if count != 0 {
                counts.append(count+1)
            }
            count = 0
        }
        
        return String(counts.reduce(1, *))
    }
    
    // 親和数 （自然数のみ）
    func affinityNumber(num1: Int) -> String {
        var counts: [Int] = []
        
        for i in 1...num1-1 {
            if num1%i == 0 {
                counts.append(i)
            }
        }
        
        return String(counts.reduce(0, +))
    }
}
