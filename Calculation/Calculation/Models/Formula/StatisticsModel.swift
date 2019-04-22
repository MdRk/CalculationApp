//
//  StatisticsModel.swift
//  Calculation
//
//  Created by 前田陸 on 2019/04/12.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import Foundation

class StatisticsModel {
    
    // 合計値
    public func sum(element: [Double]) -> Double {
        return element.reduce(0, +)
    }
    
    // 平均値
    public func average(element: [Double]) -> Double {
        return element.reduce(0, +) / Double(element.count)
    }
    
    // 分散
    public func dispersion(element: [Double]) -> Double {
        let ave = average(element: element)
        
        let newEle = element.map { $0 - ave }
        
        let powEle = newEle.map { $0 * $0 }
        
        return average(element: powEle)
    }
    
    // 不偏分散
    public func unDispersion(element: [Double]) -> Double {
        let ave = average(element: element)
        
        let newEle = element.map { $0 - ave }
        
        let powEle = newEle.map { $0 * $0 }
        
        return powEle.reduce(0, +) / Double(powEle.count - 1)
    }
    
    // 共分散　（引数１と引数２の個数が違うとエラー）
    public func covariance(element1: [Double], element2: [Double]) -> Double {
        let ave1 = average(element: element1)
        let ave2 = average(element: element2)
        
        let newEle1 = element1.map { $0 - ave1 }
        let newEle2 = element2.map { $0 - ave2 }
        
        var resultEle: [Double] = []
        for i in 0...newEle1.count-1 {
            resultEle.append(newEle1[i] * newEle2[i])
        }
        
        return average(element: resultEle)
    }
    
    // 標準偏差（分散）
    public func standDev(element: [Double]) -> Double {
        return sqrt(dispersion(element: element))
    }
    
    // 標準偏差（不偏分散）
    public func unStandDev(element: [Double]) -> Double {
        return sqrt(unDispersion(element: element))
    }
    
    // 標準誤差
    public func standError(element: [Double]) -> Double {
        return sqrt(unDispersion(element: element) / Double(element.count))
    }
    
    // 標準化
    public func standard(element: Double, ave: Double, stand: Double) -> Double {
        return (element - ave) / stand
    }
    
    // t値
    public func t(element1: [Double], element2: [Double]) -> Double {
        let ave1 = average(element: element1)
        let ave2 = average(element: element2)
        
        let unDis1 = unDispersion(element: element1)
        let unDis2 = unDispersion(element: element2)
        
        let poolDis = ((Double(element1.count - 1) * unDis1) + (Double(element2.count - 1) * unDis2)) / Double(element1.count + element2.count - 2)
        
        let recEle1 = Double(1 / element1.count)
        let recEle2 = Double(1 / element2.count)
        
        let lowArgu = sqrt(poolDis * (recEle1 + recEle2))
        
        return (ave1 - ave2) / lowArgu
    }
}
