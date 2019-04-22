//
//  FormulaModel.swift
//  Calculation
//
//  Created by 前田陸 on 2019/04/02.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import Foundation
import UIKit

class FormulaModel {
    
    public var allFormulas: [[String]]?
    public var allArguments: [[Int]]?
    
    public let items = ["数の計算", "面積", "体積", "図形", "単位", "統計", "商取引"]
    
    // 数の計算
    public let numCalculations = ["累乗", "平方根", "三角数", "四角数", "ガウス記号", "2進数", "16進数", "最小公倍数", "最大公約数", "約数の個数", "親和数"]
    public let numArgu = [2, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1]
    
    // 面積
    public let areas = ["正方形", "長方形", "平行四辺形", "三角形", "ひし形", "台形", "扇形", "円", "立方体", "直方体", "円柱", "円錐", "球", "正四面体", "正六面体", "正八面体", "正十二面体", "正二十面体"]
    public let areaArgu = [2, 2, 2, 2, 2, 3, 2, 2, 1, 3, 2, 2, 1, 1, 1, 1, 1, 1]
    
    // 体積
    public let volumes = ["立方体", "直方体", "角錐", "角柱", "円錐", "円柱", "球", "正四面体", "正六面体", "正八面体", "正十二面体", "正二十面体"]
    public let volumeArgu = [1, 3, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1]
    
    // 図形
    public let shapes = ["sin", "cos", "tan", "ラジアン", "三平方の定理", "円周", "扇形の弧の長さ", "扇形の弦の長さ", "外接円の半径", "内接円の半径", "外心における角度１", "外心における角度２", "内心における角度１", "内心における角度２", "内心における角度３"]
    public let shapeArgu = [1, 1, 1, 1, 2, 1, 2, 2, 2, 4, 2, 2, 2, 1, 1]
    
    // 単位
    public let units = ["t", "kg", "g", "km", "m", "cm", "km²", "m²", "cm²", "ha", "a", "km³", "m³", "cm³", "kL", "L", "dL", "mL", "ダース"]
    public let unitArgu = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    
    // 統計
    public let statistics = ["合計値", "平均値", "分散", "不偏分散", "共分散", "標準偏差（分散）", "標準偏差（不偏分散）", "標準誤差", "標準化", "t値"]
    public let statisArgu = [1, 1, 1, 1, 2, 1, 1, 1, 3, 2]
    
    // 商取引
    public let commerce = ["パーセント", "原価１", "原価２", "原価３", "割引率", "利益率", "損失率", "", "", "", "", ""]
    public let comArgu = [2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0]
    
    
// 引数１
    
    // 2進数、16進数、約数の個数、親和数、ラジアン
    public func oneText(frameView: UIView, argTextField: UITextField) {
        
        argTextField.isHidden = false
        
        let groundView = UIView()
        
        groundView.frame = CGRect(x: 0, y: 0, width: frameView.frame.width, height: frameView.frame.height)
        
        argTextField.frame = CGRect(x: 0, y: 0, width: groundView.frame.width/5, height: groundView.frame.height/10)
        argTextField.center = CGPoint(x: groundView.center.x, y: groundView.center.y)
        argTextField.backgroundColor = .white
    }
    
    
    init(){
        allFormulas = [numCalculations, areas, volumes, shapes, units, statistics, commerce]
        allArguments = [numArgu, areaArgu, volumeArgu, shapeArgu, unitArgu, statisArgu, comArgu]
    }
    
}
