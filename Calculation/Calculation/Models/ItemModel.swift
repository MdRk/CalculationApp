//
//  ItemModel.swift
//  Calculation
//
//  Created by 前田陸 on 2019/04/22.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import Foundation
import UIKit

class ItemModel {
    
    public var allFormulas: [[String]]?
    public var displayProof: [[Int]]?
    public var allLeftText: [[String]]?
    public var allCentText: [[String]]?
    public var allRightText: [[String]]?
    
    public let items = ["数の計算", "面積", "体積", "図形", "単位", "統計", "商取引"]
    
    // 数の計算
    public let numCalculations = ["累乗", "平方根", "三角数", "四角数", "ガウス記号", "2進数", "16進数", "最小公倍数", "最大公約数", "約数の個数", "親和数"]
    public let numDisProof = [0, 4, 4, 4, 2, 1, 1, 0, 0, 1, 1]
    public let numLeftText = ["", "√", "1 ~", "1 ~", "[", "", "", "", "", "", ""]
    public let numCentText = ["", "", "", "", "", "", "", " , ", " , ", "", ""]
    public let numRightText = ["", "", "", "", "]", "", "", "", "", "", ""]
    
    // 面積
    public let areas = ["正方形", "長方形", "平行四辺形", "三角形", "ひし形", "台形", "扇形", "円", "立方体", "直方体", "円柱", "円錐", "球", "正四面体", "正六面体", "正八面体", "正十二面体", "正二十面体"]
    public let areaDisProof = [0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 2, 2, 2, 2, 2, 2]
    public let areaLeftText = ["", "", "", "", "", "(", "", "π ×", "6 ×", "", "", "", "4π × ", "√3 × ", "6 ×", "2√3 ×", "3√(25 + 10√5) ×", "5√3 ×"]
    public let areaCentText = [" × ", " × ", " × ", " × ", " × ", " + ", " × ", "", "", "", "", "", "", "", "", "", "", ""]
    public let areaRightText = ["", "", "", "", "", ") × ", "", "²", "²", "", "", "", "²", "²", "²", "²", "²", "²"]
    
    // 体積
    public let volumes = ["立方体", "直方体", "角錐", "角柱", "円錐", "円柱", "球", "正四面体", "正六面体", "正八面体", "正十二面体", "正二十面体"]
    public let volumeDisProof = [3, 0, 0, 0, 0, 0, 5, 5, 3, 5, 5, 5]
    public let volumeLeftText = ["", "直方体", "角錐", "角柱", "円錐", "円柱", "4π ×", "√2 ×", "", "√2 ×", "(15 + 7√5) ×", "5(3 + √5) ×"]
    public let volumeCentText = ["", "直方体", "角錐", "角柱", "円錐", "円柱", "", "", "", "", "", ""]
    public let volumeRightText = ["³", "直方体", "角錐", "角柱", "円錐", "円柱", "³", "³", "³", "³", "³", "³"]
    
    // 図形
    public let shapes = ["sin", "cos", "tan", "ラジアン", "三平方の定理", "円周", "扇形の弧の長さ", "扇形の弦の長さ", "外接円の半径", "内接円の半径", "外心における角度１", "外心における角度２", "内心における角度１", "内心における角度２", "内心における角度３"]
    public let shapeDisProof = [2, 2, 2, 3, 0, 4, 0, 0, 0, 0, 0, 0, 0, 1, 1]
    public let shapeLeftText = ["sin", "cos", "tan", "", "三平方の定理", "2π ×", "扇形の弧の長さ", "扇形の弦の長さ", "外接円の半径", "内接円の半径", "外心における角度１", "外心における角度２", "内心における角度１", "", ""]
    public let shapeCentText = ["", "", "", "", "三平方の定理", "", "扇形の弧の長さ", "扇形の弦の長さ", "外接円の半径", "内接円の半径", "外心における角度１", "外心における角度２", "内心における角度１", "", ""]
    public let shapeRightText = ["°", "°", "°", "°", "三平方の定理", "", "扇形の弧の長さ", "扇形の弦の長さ", "外接円の半径", "内接円の半径", "外心における角度１", "外心における角度２", "内心における角度１", "", ""]
    
    // 単位
    public let units = ["t", "kg", "g", "km", "m", "cm", "km²", "m²", "cm²", "ha", "a", "km³", "m³", "cm³", "kL", "L", "dL", "ダース"]
    public let unitDisProof = Array(repeating: 3, count: 18)
    public let unitLeftText = Array(repeating: "", count: 18)
    public let unitCentText = Array(repeating: "", count: 18)
    public let unitRightText = ["t", "kg", "g", "km", "m", "cm", "km²", "m²", "cm²", "ha", "a", "km³", "m³", "cm³", "kL", "L", "dL", "ダース"]
    
    // 統計
    public let statistics = ["合計値", "平均値", "分散", "不偏分散", "共分散", "標準偏差（分散）", "標準偏差（不偏分散）", "標準誤差", "標準化", "t値"]
    public let statisDisProof = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    public let statisLeftText = ["合計値", "平均値", "分散", "不偏分散", "共分散", "標準偏差（分散）", "標準偏差（不偏分散）", "標準誤差", "標準化", "t値"]
    public let statisCentText = ["合計値", "平均値", "分散", "不偏分散", "共分散", "標準偏差（分散）", "標準偏差（不偏分散）", "標準誤差", "標準化", "t値"]
    public let statisRightText = ["合計値", "平均値", "分散", "不偏分散", "共分散", "標準偏差（分散）", "標準偏差（不偏分散）", "標準誤差", "標準化", "t値"]
    
    // 商取引
    public let commerce = ["パーセント", "原価１", "原価２", "原価３", "割引率", "利益率", "損失率", "", "", "", "", ""]
    public let comDisProof = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    public let comLeftText = ["パーセント", "原価１", "原価２", "原価３", "割引率", "利益率", "損失率", "", "", "", "", ""]
    public let comCentText = ["パーセント", "原価１", "原価２", "原価３", "割引率", "利益率", "損失率", "", "", "", "", ""]
    public let comRightText = ["パーセント", "原価１", "原価２", "原価３", "割引率", "利益率", "損失率", "", "", "", "", ""]
    
    init(){
        allFormulas = [numCalculations, areas, volumes, shapes, units, statistics, commerce]
        displayProof = [numDisProof, areaDisProof, volumeDisProof, shapeDisProof, unitDisProof, statisDisProof, comDisProof]
        allLeftText = [numLeftText, areaLeftText, volumeLeftText, shapeLeftText, unitLeftText, statisLeftText, comLeftText]
        allCentText = [numCentText, areaCentText, volumeCentText, shapeCentText, unitCentText, statisCentText, comCentText]
        allRightText = [numRightText, areaRightText, volumeRightText, shapeRightText, unitRightText, statisRightText, comRightText]
    }
    
}
