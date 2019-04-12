//
//  FormulaModel.swift
//  Calculation
//
//  Created by 前田陸 on 2019/04/02.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import Foundation

class FormulaModel {
    
    public let items = ["数の計算", "面積", "体積", "図形", "単位", "統計", "商取引"]
    
    public let numCalculations = ["累乗", "平方根", "三角数", "四角数", "親和数", "ガウス記号", "2進数", "16進数", "最小公倍数", "最大公約数"]
    public let areas = ["正方形", "長方形", "平行四辺形", "正三角形", "三角形", "ひし形", "扇形", "円", "立方体", "直方体", "円柱", "円錐", "台形", "球", "正多面体"]
    public let volumes = ["立方体", "直方体", "角錐", "角柱", "円錐", "円柱", "球", "正多面体"]
    public let shapes = ["sin", "cos", "tan", "三平方の定理", "円周", "扇形の弧の長さ", "扇形の弦の長さ", "外接円の半径", "内接円の半径", "外心における角度１", "外心における角度２", "内心における角度１", "内心における角度２", "内心における角度３"]
    public let units = ["t", "kg", "g", "km", "m", "cm", "km²", "m²", "cm²", "ha", "a", "km³", "m³", "cm³", "kL", "L", "dL", "mL", "ダース"]
    public let statistics = ["合計値", "平均値", "標準偏差", "分散", "不偏分散", "標準誤差１", "標準誤差", "標準得点", "z値"]
    public let commerce = ["パーセント", "原価１", "原価２", "原価３", "割引率", "利益率", "損失率", "", "", "", "", ""]
    
    public var allFormulas: [[String]]?
    
    init(){
        allFormulas = [numCalculations, areas, volumes, shapes, units, statistics, commerce]
    }
    
}
