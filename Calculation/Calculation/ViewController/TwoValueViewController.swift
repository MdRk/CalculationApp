//
//  TwoValueViewController.swift
//  Calculation
//
//  Created by 前田陸 on 2018/11/12.
//  Copyright © 2018年 陸　前田. All rights reserved.
//

import UIKit

class TwoValueViewController: UIViewController {
    
    @IBOutlet weak var officialImageView: UIImageView!
    @IBOutlet weak var value1TextField: UITextField!
    @IBOutlet weak var value2TextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var answerButton: UIButton!
    @IBOutlet weak var value1Label: UILabel!
    @IBOutlet weak var value2Label: UILabel!
    
    var parentCell: String = ""
    var selectedCell: String = ""
    
    var calculation = CalculationModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageChange()
        
        self.navigationItem.title = self.selectedCell
        
        self.value1TextField.keyboardType = UIKeyboardType.numberPad
        self.value2TextField.keyboardType = UIKeyboardType.numberPad
    }
    
    func imageChange() {
        switch self.selectedCell {
        case "加算":
            officialImageView.image = UIImage(named: "加算")
            break
        case "減算":
            officialImageView.image = UIImage(named: "減算")
            break
        case "乗算":
            officialImageView.image = UIImage(named: "乗算")
            break
        case "除算":
            officialImageView.image = UIImage(named: "除算")
            break
        case "累乗":
            officialImageView.image = UIImage(named: "累乗")
            value1Label.text = "X"
            value2Label.text = "n"
            break
        case "正方形":
            officialImageView.image = UIImage(named: "正方形")
            break
        case "長方形":
            officialImageView.image = UIImage(named: "長方形")
            break
        case "平行四辺形":
            officialImageView.image = UIImage(named: "平行四辺形")
            value1Label.text = "底辺"
            value2Label.text = "高さ"
            break
        case "三角形":
            officialImageView.image = UIImage(named: "三角形")
            value1Label.text = "底辺"
            value2Label.text = "高さ"
            break
        case "ひし形":
            officialImageView.image = UIImage(named: "ひし形")
            value1Label.text = "対角線1"
            value2Label.text = "対角線2"
            break
        case "扇形１":
            officialImageView.image = UIImage(named: "扇形1")
            value1Label.text = "半径"
            value2Label.text = "中心角"
            break
        case "扇形２":
            officialImageView.image = UIImage(named: "扇形2")
            value1Label.text = "弧"
            value2Label.text = "半径"
            break
        case "円柱":
            if parentCell == "面積" {
                officialImageView.image = UIImage(named: "円柱表面積")
                value1Label.text = "半径"
                value2Label.text = "高さ"
            } else {
                officialImageView.image = UIImage(named: "円柱体積")
                value1Label.text = "r"
                value2Label.text = "h"
            }
            break
        case "四角錐":
            officialImageView.image = UIImage(named: "四角錐体積")
            value1Label.text = "弧"
            value2Label.text = "半径"
            break
        case "円錐":
            if parentCell == "面積" {
                officialImageView.image = UIImage(named: "円錐表面積")
                value1Label.text = "S"
                value2Label.text = "h"
            } else {
                officialImageView.image = UIImage(named: "円錐体積")
                value1Label.text = "r"
                value2Label.text = "h"
            }
            break
        case "扇形の弧":
            officialImageView.image = UIImage(named: "扇形の弧")
            value1Label.text = "r"
            value2Label.text = "x"
            break
        case "速さ":
            officialImageView.image = UIImage(named: "速さ")
            value1Label.text = "距離"
            value2Label.text = "時間"
            break
        case "距離":
            officialImageView.image = UIImage(named: "距離")
            value1Label.text = "速さ"
            value2Label.text = "時間"
            break
        case "時間":
            officialImageView.image = UIImage(named: "時間")
            value1Label.text = "距離"
            value2Label.text = "速さ"
            break
        case "平均":
            //officialImageView.image = UIImage(named: "平均")
            value1Label.text = "合計"
            value2Label.text = "個数"
            break
        case "合計":
            //officialImageView.image = UIImage(named: "合計")
            value1Label.text = "平均"
            value2Label.text = "個数"
            break
        case "個数":
            //officialImageView.image = UIImage(named: "個数")
            value1Label.text = "合計"
            value2Label.text = "平均"
            break
        case "人口密度":
            //officialImageView.image = UIImage(named: "人口密度")
            value1Label.text = "人口"
            value2Label.text = "面積"
            break
        default:
            break
        }
    }
    
    func calculation(value1: Double, value2: Double) {
        var answer: Double = 0
        
        switch self.selectedCell {
        case "加算":
            answer = calculation.addition(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.0f", answer)
            break
        case "減算":
            answer = calculation.subtraction(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.0f", answer)
            break
        case "乗算":
            answer = calculation.multiplication(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.0f", answer)
            break
        case "除算":
            answer = calculation.division(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.2f", answer)
            break
        case "累乗":
            answer = calculation.power(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.0f", answer)
        case "正方形":
            answer = calculation.multiplication(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.0f", answer)
            break
        case "長方形":
            answer = calculation.multiplication(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.0f", answer)
            break
        case "平行四辺形":
            answer = calculation.multiplication(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.0f", answer)
            break
        case "三角形":
            answer = calculation.triangle(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.2f", answer)
            break
        case "ひし形":
            answer = calculation.triangle(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.2f", answer)
            break
        case "扇形１":
            answer = calculation.sector1(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.2f", answer)
            break
        case "扇形２":
            answer = calculation.sector2(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.2f", answer)
            break
        case "円柱":
            if parentCell == "面積" {
                answer = calculation.areaCylinder(value1: value1, value2: value2)
                answerLabel.text = String(format: "%0.2f", answer)
            } else {
                answer = calculation.volumeCylinder(value1: value1, value2: value2)
                answerLabel.text = String(format: "%0.2f", answer)
            }
            break
        case "四角錐":
            answer = calculation.volumeSquarePyramid(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.2f", answer)
            break
        case "円錐":
            if parentCell == "面積" {
                answer = calculation.areaCone(value1: value1, value2: value2)
                answerLabel.text = String(format: "%0.2f", answer)
            } else {
                answer = calculation.volumeCone(value1: value1, value2: value2)
                answerLabel.text = String(format: "%0.2f", answer)
            }
            break
        case "扇形の弧":
            answer = calculation.fanArc(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.2f", answer)
            break
        case "速さ":
            answer = calculation.division(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.2f", answer)
            break
        case "距離":
            answer = calculation.multiplication(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.0f", answer)
            break
        case "時間":
            answer = calculation.division(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.2f", answer)
            break
        case "平均":
            answer = calculation.division(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.2f", answer)
            break
        case "合計":
            answer = calculation.multiplication(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.2f", answer)
            break
        case "個数":
            answer = calculation.division(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.2f", answer)
            break
        case "人口密度":
            answer = calculation.division(value1: value1, value2: value2)
            answerLabel.text = String(format: "%0.2f", answer)
            break
        default:
            break
        }
    }

    @IBAction func tapAnswerButton(_ sender: UIButton) {
        calculation(value1: Double(value1TextField.text!)!, value2: Double(value2TextField.text!)!)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
