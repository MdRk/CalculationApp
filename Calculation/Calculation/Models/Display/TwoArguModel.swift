//
//  TwoArguModel.swift
//  Calculation
//
//  Created by 前田陸 on 2019/04/24.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import Foundation
import UIKit

class TwoArguModel {
    
    // 下地のView
    private let groundView = UIView()
    // 図形のimageView
    private var glaphImage = UIImageView()
    // TextFieldの座標の倍率
    private var text1XPoint: CGFloat = 1
    private var text2XPoint: CGFloat = 1
    private var textYPoint: CGFloat = 1
    // LabelのX座標の倍率
    private var labelXPoint: CGFloat = 1
    // Labelのwidthの倍率
    private var labelWidth: CGFloat = 1
    // 左のlavel
    private let leftLabel: UILabel = {
        let leftLabel = UILabel()
        leftLabel.font = leftLabel.font.withSize(20)
        leftLabel.backgroundColor = .clear
        leftLabel.tintColor = .black
        leftLabel.textAlignment = NSTextAlignment.right
        return leftLabel
    }()
    // 中央のlabel
    private let centLabel: UILabel = {
        let centLabel = UILabel()
        centLabel.font = centLabel.font.withSize(20)
        centLabel.backgroundColor = .clear
        centLabel.tintColor = .black
        centLabel.textAlignment = NSTextAlignment.center
        return centLabel
    }()
    // 右のlabel
    private let rightLabel: UILabel = {
        let rightLabel = UILabel()
        rightLabel.font = rightLabel.font.withSize(20)
        rightLabel.backgroundColor = .clear
        rightLabel.tintColor = .black
        return rightLabel
    }()
    
    // 引数1を表示するLabel
    public var textLabel1: UILabel = {
        var textLabel1 = UILabel()
        textLabel1.font = textLabel1.font.withSize(20)
        textLabel1.backgroundColor = .clear
        textLabel1.tintColor = .black
        textLabel1.textAlignment = NSTextAlignment.center
        return textLabel1
    }()
    // 引数2を表示するLabel
    public var textLabel2: UILabel = {
        var textLabel2 = UILabel()
        textLabel2.font = textLabel2.font.withSize(20)
        textLabel2.backgroundColor = .clear
        textLabel2.tintColor = .black
        textLabel2.textAlignment = NSTextAlignment.center
        return textLabel2
    }()
    
    // 最大公約数、最小公倍数、正方形、長方形、平行四辺形（面積）、角柱（体積）
    public func twoTextOneLabel(frameView: UIView, argTextField1: UITextField, argTextField2: UITextField, centText: String, title: String) {
        
        // TextFieldの座標の倍率を変更
        if !(title == "最大公約数" || title == "最小公倍数") {
            textYPoint = 1.7
        }
        
        // TextField表示
        argTextField1.isHidden = false
        argTextField2.isHidden = false
        
        // 下地のViewを設定
        groundView.frame = CGRect(x: 0, y: 0, width: frameView.frame.width, height: frameView.frame.height)
        
        // 中央のLabelを設定
        centLabel.frame = CGRect(x: 0, y: 0, width: groundView.frame.width/10, height: groundView.frame.height/10)
        centLabel.center = CGPoint(x: groundView.center.x, y: groundView.center.y * textYPoint)
        centLabel.text = centText
        
        // textField1を設定
        let argTextField1X = centLabel.center.x - (centLabel.frame.size.width * 2.5) - 5
        argTextField1.frame = CGRect(x: argTextField1X, y: 0, width: centLabel.frame.width*2, height: centLabel.frame.height)
        argTextField1.center.y = centLabel.center.y
        argTextField1.backgroundColor = .white
        
        // textField2を設定
        let argTextField2X = centLabel.center.x + (centLabel.frame.size.width * 0.5) + 5
        argTextField2.frame = CGRect(x: argTextField2X, y: 0, width: centLabel.frame.width*2, height: centLabel.frame.height)
        argTextField2.center.y = centLabel.center.y
        argTextField2.backgroundColor = .white
        
        // 図形のimageViewを設定
        glaphImage.backgroundColor = .groupTableViewBackground
        glaphImage.frame = CGRect(x: 0, y: 0, width: (groundView.frame.height/3)*2, height: (groundView.frame.height/3)*2)
        glaphImage.center.x = groundView.center.x
        
        // 図形のimageViewを変更
        switch title {
        case "正方形":
            frameView.addSubview(glaphImage)
        case "長方形":
            frameView.addSubview(glaphImage)
        case "平行四辺形":
            frameView.addSubview(glaphImage)
        case "角柱":
            frameView.addSubview(glaphImage)
        case "外心における角度１":
            frameView.addSubview(glaphImage)
        case "外心における角度２":
            frameView.addSubview(glaphImage)
        case "内心における角度１":
            frameView.addSubview(glaphImage)
        default:
            glaphImage.isHidden = true
        }
        
        // Labelを追加
        frameView.addSubview(centLabel)
    }
    
    // 累乗
    public func twoText(frameView: UIView, argTextField1: UITextField, argTextField2: UITextField) {
        
        // TextField表示
        argTextField1.isHidden = false
        argTextField2.isHidden = false
        
        // 下地のViewを設定
        groundView.frame = CGRect(x: 0, y: 0, width: frameView.frame.width, height: frameView.frame.height)
        
        // TextField1を設定
        argTextField1.frame = CGRect(x: 0, y: 0, width: groundView.frame.width/5, height: groundView.frame.height/10)
        argTextField1.center = CGPoint(x: groundView.center.x, y: groundView.center.y)
        argTextField1.backgroundColor = .white
        
        // TextField2の座標
        let argTextField2X = groundView.center.x + ((argTextField1.frame.size.width/4) * 3)
        let argTextField2Y = groundView.center.y - argTextField1.frame.size.height
        // TextField2を設定
        argTextField2.frame = CGRect(x: 0, y: 0, width: argTextField1.frame.width/2, height: argTextField1.frame.height)
        argTextField2.center = CGPoint(x: argTextField2X, y: argTextField2Y)
        argTextField2.backgroundColor = .white
    }
    
    // 円柱、円錐（面積）、円柱（体積）、三平方の定理、扇形の弧、扇形の弦
    public func twoTextMultiLabel(frameView: UIView, argTextField1: UITextField, argTextField2: UITextField, leftText: String, centText: inout String, rightText: String, title: String) {
        
        // text1と中央Labelとの空白
        var text1Blank: CGFloat = 5
        // text2とcentLabelとの空白
        var text2Blank: CGFloat = 5
        
        // 数式のY座標の倍率を変更
        textYPoint = 1.7
        
        // TextField表示
        argTextField1.isHidden = false
        argTextField2.isHidden = false
        
        // 下地のViewを設定
        groundView.frame = CGRect(x: 0, y: 0, width: frameView.frame.width, height: frameView.frame.height)
        
        // 中央Labelの幅と高さ
        let centLabelWidth = (groundView.frame.width/10) * labelWidth
        let centLabelHeight = groundView.frame.height/10
        // 中央のLabelを設定
        switch centText {
        case "² + (2π":
            textLabel1.text = "r"
            centText = centText + textLabel1.text! + " ×"
            labelWidth = 2
            labelXPoint = 1.1
        case "² + π":
            textLabel1.text = "r"
            textLabel2.text = "r"
            centText = centText + textLabel1.text! + "√(" + textLabel2.text! + "² +"
            labelWidth = 2.5
        case "² ×":
            text1Blank = 0
            labelXPoint = 1.05
        case "² +":
            text1Blank = 0
        case "×":
            text1Blank = 0
            text2Blank = 0
        case "× sin":
            text2Blank = 0
            labelWidth = 1.2
            labelXPoint = 1.05
        default:
            break
        }
        centLabel.frame = CGRect(x: 0, y: 0, width: centLabelWidth, height: centLabelHeight)
        centLabel.center = CGPoint(x: groundView.center.x * labelXPoint, y: groundView.center.y * textYPoint)
        centLabel.text = centText
        
        // textField1を設定
        let argTextFieldWidth = groundView.frame.width/5
        let argTextFieldHeight = centLabel.frame.height
        argTextField1.frame = CGRect(x: 0, y: 0, width: argTextFieldWidth, height: argTextFieldHeight)
        let argTF1CentX = centLabel.center.x - ((centLabel.frame.size.width/2) + text1Blank + (argTextField1.frame.size.width/2))
        argTextField1.center = CGPoint(x: argTF1CentX, y: centLabel.center.y)
        argTextField1.backgroundColor = .white
        
        // textField2を設定
        let argTextField2X = centLabel.center.x + (centLabel.frame.size.width * 0.5) + text2Blank
        argTextField2.frame = CGRect(x: argTextField2X, y: 0, width: argTextFieldWidth, height: argTextFieldHeight)
        argTextField2.center.y = centLabel.center.y
        argTextField2.backgroundColor = .white
        
        // 左のLabelを設定
        leftLabel.frame = CGRect(x: 0, y: 0, width: argTextField1.frame.width*2, height: argTextField1.frame.height)
        // 左のLabelのX座標
        let leftLCentX = argTextField1.center.x - ((argTextField1.frame.width/2) + 5 + (leftLabel.frame.size.width/2))
        leftLabel.center = CGPoint(x: leftLCentX, y: centLabel.center.y)
        leftLabel.text = leftText
        
        // 右のLabelのX座標
        let rightLabelX = argTextField2.center.x + (argTextField2.frame.size.width * 0.5) + 5
        // 右のLabelを設定
        rightLabel.frame = CGRect(x: rightLabelX, y: 0, width: argTextField2.frame.width*2, height: argTextField2.frame.height)
        rightLabel.center.y = argTextField2.center.y
        rightLabel.text = rightText
        
        // 図形のimageViewを設定
        glaphImage.backgroundColor = .groupTableViewBackground
        glaphImage.frame = CGRect(x: 0, y: 0, width: (groundView.frame.height/3)*2, height: (groundView.frame.height/3)*2)
        glaphImage.center.x = groundView.center.x
        
        // 図形のimageViewを変更
        switch title {
        case "円柱":
            frameView.addSubview(glaphImage)
        case "円錐":
            frameView.addSubview(glaphImage)
        case "三平方の定理":
            frameView.addSubview(glaphImage)
        case "扇形の弧の長さ":
            frameView.addSubview(glaphImage)
        case "扇形の弦の長さ":
            frameView.addSubview(glaphImage)
        default:
            glaphImage.isHidden = true
        }
        
        // Labelを追加
        frameView.addSubview(centLabel)
        frameView.addSubview(leftLabel)
        frameView.addSubview(rightLabel)
    }
    
    // 三角形、ひし形、扇形（面積）、角錐、円錐（体積）、外接円の半径、原価１２３、割引率
    public func twoTextFraction(frameView: UIView, argTextField1: UITextField, argTextField2: UITextField, leftText: String, centText: String, title: String) {
        
        // 分数の中心線のwidthの倍率
        var denoWidth: CGFloat = 2
        
        // text1と中央Labelとの空白
        var text1Blank: CGFloat = 5
        // text2とcentLabelとの空白
        var text2Blank: CGFloat = 5
        
        // 数式のY座標の倍率を変更
        textYPoint = 1.7
        
        // TextField表示
        argTextField1.isHidden = false
        argTextField2.isHidden = false
        
        // 下地のViewを設定
        groundView.frame = CGRect(x: 0, y: 0, width: frameView.frame.width, height: frameView.frame.height)
        
        // 中央Labelの幅と高さ
        let centLabelWidth = (groundView.frame.width/10) * labelWidth
        let centLabelHeight = groundView.frame.height/10
        // 中央のLabelを設定
        switch centText {
        case "× sin":
            text2Blank = 0
            labelWidth = 1.2
            labelXPoint = 1.05
        default:
            break
        }
        centLabel.frame = CGRect(x: 0, y: 0, width: centLabelWidth, height: centLabelHeight)
        centLabel.center = CGPoint(x: groundView.center.x * labelXPoint, y: groundView.center.y * textYPoint)
        centLabel.text = centText
    }
}
