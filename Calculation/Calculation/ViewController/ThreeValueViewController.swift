//
//  ThreeValueViewController.swift
//  Calculation
//
//  Created by 前田陸 on 2018/12/30.
//  Copyright © 2018年 陸　前田. All rights reserved.
//

import UIKit

class ThreeValueViewController: UIViewController {

    @IBOutlet weak var officialImageView: UIImageView!
    @IBOutlet weak var value1TextField: UITextField!
    @IBOutlet weak var value2TextField: UITextField!
    @IBOutlet weak var value3TextField: UITextField!
    @IBOutlet weak var value1Label: UILabel!
    @IBOutlet weak var value2Label: UILabel!
    @IBOutlet weak var value3Label: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    var parentCell: String = ""
    var selectedCell: String = ""
    
    var calculation = CalculationModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageChange()
        
        self.navigationItem.title = self.selectedCell
        
        self.value1TextField.keyboardType = UIKeyboardType.numberPad
        self.value2TextField.keyboardType = UIKeyboardType.numberPad
        self.value3TextField.keyboardType = UIKeyboardType.numberPad
    }
    
    func imageChange() {
        switch self.selectedCell {
        case "台形":
            officialImageView.image = UIImage(named: "台形")
            value1Label.text = "上底"
            value2Label.text = "下底"
            value3Label.text = "高さ"
            break
        case "直方体":
            if parentCell == "面積" {
                officialImageView.image = UIImage(named: "直方体表面積")
                value1Label.text = "a"
                value2Label.text = "b"
                value3Label.text = "c"
            } else {
                officialImageView.image = UIImage(named: "直方体体積")
                value1Label.text = "a"
                value2Label.text = "b"
                value3Label.text = "h"
            }
            break
        case "四角錐":
            officialImageView.image = UIImage(named: "四角錐表面積")
            value1Label.text = "a"
            value2Label.text = "b"
            value3Label.text = "h"
            break
        default:
            break
        }
    }
    
    func calculation(value1: Double, value2: Double, value3: Double) {
        var answer: Double = 0
        
        switch self.selectedCell {
        case "台形":
            answer = calculation.trapezoid(value1: value1, value2: value2, value3: value3)
            answerLabel.text = String(format: "%0.2f", answer)
            break
        case "直方体":
            if parentCell == "面積" {
                answer = calculation.areaCuboid(value1: value1, value2: value2, value3: value3)
                answerLabel.text = String(format: "%0.2f", answer)
            } else {
                answer = calculation.volumeCuboid(value1: value1, value2: value2, value3: value3)
                answerLabel.text = String(format: "%0.2f", answer)
            }
            break
        case "四角錐":
            answer = calculation.areaSquarePyramid(value1: value1, value2: value2, value3: value3)
            answerLabel.text = String(format: "%0.2f", answer)
            break
        default:
            break
        }
    }
    
    @IBAction func tapAnswerButton(_ sender: UIButton) {
        calculation(value1: Double(value1TextField.text!)!, value2: Double(value2TextField.text!)!, value3: Double(value3TextField.text!)!)
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
