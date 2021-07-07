//
//  OneArguModel.swift
//  Calculation
//
//  Created by 前田陸 on 2019/04/22.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import Foundation
import UIKit

class OneArguModel {
    
    // 下地のView
    private let groundView = UIView()
    // 図形のimageView
    private var glaphImage = UIImageView()
    // TextFieldの座標の倍率
    var textXPoint: CGFloat = 1
    var textYPoint: CGFloat = 1
    // 左のlavel
    private let leftLabel: UILabel = {
        let leftLabel = UILabel()
        leftLabel.font = leftLabel.font.withSize(20)
        leftLabel.backgroundColor = .clear
        leftLabel.tintColor = .black
        leftLabel.textAlignment = NSTextAlignment.right
        return leftLabel
    }()
    // 右のlabel
    private let rightLabel: UILabel = {
        let rightLabel = UILabel()
        rightLabel.font = rightLabel.font.withSize(20)
        rightLabel.backgroundColor = .clear
        rightLabel.tintColor = .black
        return rightLabel
    }()
    
    // 2進数、16進数、約数の個数、親和数、内心における角度２、内心における角度３
    public func oneText(frameView: UIView, argTextField: UITextField, title: String) {
        
        // TextFieldの座標の倍率を変更
        if (title == "内心における角度２") || (title == "内心における角度３") {
            textYPoint = 1.7
        }
        
        // TextFieldを表示
        argTextField.isHidden = false
        
        // 下地のViewを設定
        groundView.frame = CGRect(x: 0, y: 0, width: frameView.frame.width, height: frameView.frame.height)
        
        // TextFieldを設定
        argTextField.frame = CGRect(x: 0, y: 0, width: groundView.frame.width/5, height: groundView.frame.height/10)
        argTextField.center = CGPoint(x: groundView.center.x, y: groundView.center.y * textYPoint)
        argTextField.backgroundColor = .white
        
        // 図形のimageViewを設定
        glaphImage.backgroundColor = .groupTableViewBackground
        glaphImage.frame = CGRect(x: 0, y: 0, width: (groundView.frame.height/3)*2, height: (groundView.frame.height/3)*2)
        glaphImage.center.x = groundView.center.x
        
        // 図形のimageViewを変更
        switch title {
        case "内心における角度２":
            frameView.addSubview(glaphImage)
        case "内心における角度３":
            frameView.addSubview(glaphImage)
        default:
            glaphImage.isHidden = true
        }
    }
    
    // ガウス記号, sin, con, tan, 円, 立方体, 球, 正四面体, 正六面体, 正八面体, 正十二面体, 正二十面体（面積）
    public func oneTextTwoLabel(frameView: UIView, argTextField: UITextField, leftText: String, rightText: String, title: String) {
        
        // TextFieldの座標の倍率を変更
        switch leftText {
        case "sin", "cos", "tan":
            textXPoint = 1.1
        case "π ×", "6 ×":
            textXPoint = 1.12
            textYPoint = 1.7
        case "4π ×", "√3 ×", "2√3 ×", "5√3 ×":
            textXPoint = 1.15
            textYPoint = 1.7
        case "3√(25 + 10√5) ×":
            textXPoint = 1.31
            textYPoint = 1.7
        default:
            textXPoint = 1
            textYPoint = 1
        }
        
        // TextFieldを表示
        argTextField.isHidden = false
        
        // 下地のViewを設定
        groundView.frame = CGRect(x: 0, y: 0, width: frameView.frame.width, height: frameView.frame.height)
        
        // TextFieldを設定
        argTextField.frame = CGRect(x: 0, y: 0, width: groundView.frame.width/5, height: groundView.frame.height/10)
        argTextField.center = CGPoint(x: groundView.center.x * textXPoint, y: groundView.center.y * textYPoint)
        argTextField.backgroundColor = .white
        
        // 左のLabelのX座標
        let leftLabelX = argTextField.center.x - (argTextField.frame.size.width * 2.5) - 5
        // 左のLabelを設定
        leftLabel.frame = CGRect(x: leftLabelX, y: 0, width: argTextField.frame.width*2, height: argTextField.frame.height)
        leftLabel.center.y = argTextField.center.y
        leftLabel.text = leftText
        
        // 右のLabelのX座標
        let rightLabelX = argTextField.center.x + (argTextField.frame.size.width * 0.5)
        // 右のLabelを設定
        rightLabel.frame = CGRect(x: rightLabelX, y: 0, width: argTextField.frame.width*2, height: argTextField.frame.height)
        rightLabel.center.y = argTextField.center.y
        rightLabel.text = rightText
        
        // 図形のimageViewを設定
        glaphImage.backgroundColor = .groupTableViewBackground
        glaphImage.frame = CGRect(x: 0, y: 0, width: (groundView.frame.height/3)*2, height: (groundView.frame.height/3)*2)
        glaphImage.center.x = groundView.center.x
        
        // 図形のimageViewを変更
        switch title {
        case "円":
            frameView.addSubview(glaphImage)
        case "立方体":
            frameView.addSubview(glaphImage)
        case "球":
            frameView.addSubview(glaphImage)
        case "正四面体":
            frameView.addSubview(glaphImage)
        case "正六面体":
            frameView.addSubview(glaphImage)
        case "正八面体":
            frameView.addSubview(glaphImage)
        case "正十二面体":
            frameView.addSubview(glaphImage)
        case "正二十面体":
            frameView.addSubview(glaphImage)
        default:
            glaphImage.isHidden = true
        }
        
        // Labelを追加
        frameView.addSubview(leftLabel)
        frameView.addSubview(rightLabel)
    }
    
    // 立方体, 正六面体　（体積）, ラジアン, 単位
    public func oneTextRightLabel(frameView: UIView, argTextField: UITextField, rightText: String, title: String) {
        
        // TextFieldの座標の倍率を変更
        if rightText == "³" {
            textYPoint = 1.7
        }
        
        // TextField表示
        argTextField.isHidden = false
        
        // 下地のViewを設定
        groundView.frame = CGRect(x: 0, y: 0, width: frameView.frame.width, height: frameView.frame.height)
        
        // 入力のtextField
        argTextField.frame = CGRect(x: 0, y: 0, width: groundView.frame.width/5, height: groundView.frame.height/10)
        argTextField.center = CGPoint(x: groundView.center.x, y: groundView.center.y * textYPoint)
        argTextField.backgroundColor = .white
        
        // 右のLabelのX座標
        let rightLabelX = argTextField.center.x + (argTextField.frame.size.width * 0.5)
        // 右のLabelを設定
        rightLabel.frame = CGRect(x: rightLabelX, y: 0, width: argTextField.frame.width*2, height: argTextField.frame.height)
        rightLabel.center.y = argTextField.center.y
        rightLabel.text = rightText
        
        // 図形のimageViewを設定
        glaphImage.backgroundColor = .groupTableViewBackground
        glaphImage.frame = CGRect(x: 0, y: 0, width: (groundView.frame.height/3)*2, height: (groundView.frame.height/3)*2)
        glaphImage.center.x = groundView.center.x
        
        // 図形のimageViewを変更
        switch title {
        case "立方体":
            frameView.addSubview(glaphImage)
        case "正六面体":
            frameView.addSubview(glaphImage)
        default:
            glaphImage.isHidden = true
        }
        
        // Labelを追加
        frameView.addSubview(rightLabel)
    }
    
    // 平方根、円周、三角数、四角数
    public func oneTextLeftLabel(frameView: UIView, argTextField: UITextField, leftText: String, title: String) {
        
        // TextFieldの座標の倍率を変更
        switch leftText {
        case "√":
            textXPoint = 1.1
        case "2π ×", "1 ~":
            textXPoint = 1.15
            textYPoint = 1.7
        default:
            textXPoint = 1
            textYPoint = 1
        }
        
        // TextField表示
        argTextField.isHidden = false
        
        // 下地のViewを設定
        groundView.frame = CGRect(x: 0, y: 0, width: frameView.frame.width, height: frameView.frame.height)
        
        // 入力のtextField
        argTextField.frame = CGRect(x: 0, y: 0, width: groundView.frame.width/5, height: groundView.frame.height/10)
        argTextField.center = CGPoint(x: groundView.center.x * textXPoint, y: groundView.center.y * textYPoint)
        argTextField.backgroundColor = .white
        
        // 左のLabelのX座標
        let leftLabelX = argTextField.center.x - (argTextField.frame.size.width * 2.5) - 5
        // 左のLabelを設定
        leftLabel.frame = CGRect(x: leftLabelX, y: 0, width: argTextField.frame.width*2, height: argTextField.frame.height)
        leftLabel.center.y = argTextField.center.y
        leftLabel.text = leftText
        
        // 図形のimageViewを設定
        glaphImage.backgroundColor = .groupTableViewBackground
        glaphImage.frame = CGRect(x: 0, y: 0, width: (groundView.frame.height/3)*2, height: (groundView.frame.height/3)*2)
        glaphImage.center.x = groundView.center.x
        
        // 図形のimageViewを変更
        switch title {
        case "円周":
            frameView.addSubview(glaphImage)
        case "三角数":
            frameView.addSubview(glaphImage)
        case "四角数":
            frameView.addSubview(glaphImage)
        default:
            glaphImage.isHidden = true
        }
        
        // Labelを追加
        frameView.addSubview(leftLabel)
    }
    
    // 球、正四面体、正八面体、正十二面体、正二十面体（体積）
    public func oneTextFraction(frameView: UIView, argTextField: UITextField, leftText: String, rightText: String, title: String) {
        
        // 分数の中心線のwidthの倍率
        var denoWidth: CGFloat = 2
        
        // TextFieldの座標の倍率を変更
        switch leftText {
        case "4π ×", "√2 ×":
            textXPoint = 1.12
            textYPoint = 1.6
        case "(15 + 7√5) ×", "5(3 + √5) ×":
            textXPoint = 1.27
            textYPoint = 1.6
        default:
            textXPoint = 1
            textYPoint = 1
        }
        
        // TextField表示
        argTextField.isHidden = false
        
        // 下地のViewを設定
        groundView.frame = CGRect(x: 0, y: 0, width: frameView.frame.width, height: frameView.frame.height)
        
        // 入力のtextField
        argTextField.frame = CGRect(x: 0, y: 0, width: groundView.frame.width/5, height: groundView.frame.height/10)
        argTextField.center = CGPoint(x: groundView.center.x * textXPoint, y: groundView.center.y * textYPoint)
        argTextField.backgroundColor = .white
        
        // 左のLabelのX座標
        let leftLabelX = argTextField.center.x - (argTextField.frame.size.width * 2.5) - 5
        // 左のLabelを設定
        leftLabel.frame = CGRect(x: leftLabelX, y: 0, width: argTextField.frame.width*2, height: argTextField.frame.height)
        leftLabel.center.y = argTextField.center.y
        leftLabel.text = leftText
        
        // 右のLabelのX座標
        let rightLabelX = argTextField.center.x + (argTextField.frame.size.width * 0.5)
        // 右のLabelを設定
        rightLabel.frame = CGRect(x: rightLabelX, y: 0, width: argTextField.frame.width*2, height: argTextField.frame.height)
        rightLabel.center.y = argTextField.center.y
        rightLabel.text = rightText
        
        // 分数の中心線を設定
        let centLine: UIView = {
            let centLine = UIView()
            if (title == "正十二面体") || (title == "正二十面体") {
                denoWidth = 2.5
            }
            centLine.frame = CGRect(x: 0, y: 0, width: argTextField.frame.size.width*denoWidth, height: 1)
            centLine.center = CGPoint(x: groundView.center.x, y: groundView.center.y*1.7)
            centLine.backgroundColor = .black
            return centLine
        }()
        
        // 分母のLabelを設定
        let denoLabel: UILabel = {
            let denoLabel = UILabel()
            denoLabel.frame = argTextField.frame
            denoLabel.center = CGPoint(x: groundView.center.x, y: groundView.center.y*1.8)
            denoLabel.textAlignment = NSTextAlignment.center
            switch title {
            case "球", "正八面体":
                denoLabel.text = "3"
            case "正四面体", "正二十面体":
                denoLabel.text = "12"
            case "正十二面体":
                denoLabel.text = "4"
            default:
                denoLabel.text = "3"
            }
            return denoLabel
        }()
        
        // 図形のimageViewを設定
        glaphImage.backgroundColor = .groupTableViewBackground
        glaphImage.frame = CGRect(x: 0, y: 0, width: (groundView.frame.height/3)*2, height: (groundView.frame.height/3)*2)
        glaphImage.center.x = groundView.center.x
        
        // 図形のimageViewを変更
        switch title {
        case "球":
            frameView.addSubview(glaphImage)
        case "正四面体":
            frameView.addSubview(glaphImage)
        case "正八面体":
            frameView.addSubview(glaphImage)
        case "正十二面体":
            frameView.addSubview(glaphImage)
        case "正二十面体":
            frameView.addSubview(glaphImage)
        default:
            glaphImage.isHidden = true
        }
        
        // Labelを追加
        frameView.addSubview(leftLabel)
        frameView.addSubview(rightLabel)
        frameView.addSubview(denoLabel)
        // centLineを追加
        frameView.addSubview(centLine)
    }
}
