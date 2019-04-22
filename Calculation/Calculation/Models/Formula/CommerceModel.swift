//
//  CommerceModel.swift
//  Calculation
//
//  Created by 前田陸 on 2019/04/12.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import Foundation

class CommerceModel {
    
    // パーセント（マイナスはエラー）
    public func percent(den: Double, mol: Double) -> Double {
        return mol / den * 100
    }
    
    // 原価１、原価２（マイナスはエラー）
    public func cost1(list: Double, profit: Double) -> Double {
        return list / (1 + profit)
    }
    
    // 原価３（マイナスはエラー）
    public func cost2(sell: Double, loss: Double) -> Double {
        return sell / (1 - loss)
    }
    
    // 割引率（マイナスはエラー）
    public func discount(regPrice: Double, disPrice: Double) -> Double {
        return (regPrice - disPrice) / regPrice
    }
    
    // 利益率（マイナスはエラー）
    public func profit(sell: Double, cost: Double) -> Double {
        return ((sell / cost)  - 1) * 100
    }
    
    // 損失率（マイナスはエラー）
    public func loss(sell: Double, cost: Double) -> Double {
        return (1 - (sell / cost)) * 100
    }
    
}
