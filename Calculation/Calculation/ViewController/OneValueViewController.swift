//
//  OneValueViewController.swift
//  Calculation
//
//  Created by 前田陸 on 2018/12/29.
//  Copyright © 2018年 陸　前田. All rights reserved.
//

import UIKit

class OneValueViewController: UIViewController {

    var parentCell: String = ""
    var selectedCell: String = ""
    
    var calculation = CalculationModel()
    
    @IBOutlet weak var officialImageView: UIImageView!
    @IBOutlet weak var value1Label: UILabel!
    @IBOutlet weak var value1TextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageChange()
        
        self.navigationItem.title = self.selectedCell
        
        self.value1TextField.keyboardType = UIKeyboardType.numberPad
    }
    
    func imageChange() {
        switch self.selectedCell {
        case "円":
            officialImageView.image = UIImage(named: "円")
            value1Label.text = "半径"
            break
        case "立方体":
            if parentCell == "面積" {
                officialImageView.image = UIImage(named: "立方体表面積")
                value1Label.text = "a"
            } else {
                officialImageView.image = UIImage(named: "立方体体積")
                value1Label.text = "a"
            }
            break
        case "球体":
            if parentCell == "面積" {
                officialImageView.image = UIImage(named: "球体表面積")
                value1Label.text = "半径"
            } else {
                officialImageView.image = UIImage(named: "球体体積")
                value1Label.text = "半径"
            }
            break
        case "円周":
            officialImageView.image = UIImage(named: "円周")
            value1Label.text = "r"
            break
        default:
            break
        }
    }
    
    func calculation(value1: Double) {
        var answer: Double = 0
        
        switch self.selectedCell {
        case "円":
            answer = calculation.circle(value1: value1)
            answerLabel.text = String(format: "%0.2f", answer)
            break
        case "立方体":
            if parentCell == "面積"{
                answer = calculation.areaCube(value1: value1)
                answerLabel.text = String(format: "%0.2f", answer)
            } else {
                answer = calculation.volumeCube(value1: value1)
                answerLabel.text = String(format: "%0.2f", answer)
            }
            break
        case "球体":
            if parentCell == "面積" {
                answer = calculation.areaSphere(value1: value1)
                answerLabel.text = String(format: "%0.2f", answer)
            } else {
                answer = calculation.volumeSphere(value1: value1)
                answerLabel.text = String(format: "%0.2f", answer)
            }
            break
        case "円周":
            answer = calculation.circumference(value1: value1)
            answerLabel.text = String(format: "%0.2f", answer)
            break
        default:
            break
        }
    }
    
    @IBAction func tapAnswerButton(_ sender: UIButton) {
        calculation(value1: Double(value1TextField.text!)!)
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
