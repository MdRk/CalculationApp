//
//  CalculationViewController.swift
//  Calculation
//
//  Created by 前田陸 on 2019/04/12.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import UIKit

class CalculationViewController: UIViewController {

    @IBOutlet weak var calculationView: UIView!
    @IBOutlet weak var arg1TextField: UITextField!
    @IBOutlet weak var arg2TextField: UITextField!
    @IBOutlet weak var arg3TextField: UITextField!
    @IBOutlet weak var arg4TextField: UITextField!
    
    let formulaModel = FormulaModel()
    
    let dummyView = UIView()
    var numLabel = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 使用するTextField以外は非表示にする
        arg1TextField.isHidden = true
        arg2TextField.isHidden = true
        arg3TextField.isHidden = true
        arg4TextField.isHidden = true
        
        // キーボードを非表示にする
        arg1TextField.inputView = dummyView
        arg2TextField.inputView = dummyView
        arg3TextField.inputView = dummyView
        arg4TextField.inputView = dummyView
        
        arg1TextField.delegate = self
        arg2TextField.delegate = self
        arg3TextField.delegate = self
        arg4TextField.delegate = self
        
        formulaModel.oneText(frameView: calculationView, argTextField: arg1TextField)
    }
    
    @IBAction func pushAllCleanBtn(_ sender: UIButton) {
    }
    
    @IBAction func pushCleanBtn(_ sender: UIButton) {
    }
    
    @IBAction func pushEqualBtn(_ sender: UIButton) {
    }
    
    @IBAction func pushZeroBtn(_ sender: UIButton) {
    }
    
    @IBAction func pushOneBtn(_ sender: UIButton) {
    }
    
    @IBAction func pushTwoBtn(_ sender: UIButton) {
    }
    
    @IBAction func pushThreeBtn(_ sender: UIButton) {
    }
    
    @IBAction func pushFourBtn(_ sender: UIButton) {
    }
    
    @IBAction func pushFiveBtn(_ sender: UIButton) {
    }
    
    @IBAction func pushSixBtn(_ sender: UIButton) {
    }
    
    @IBAction func pushSevenBtn(_ sender: UIButton) {
    }
    
    @IBAction func pushEightBtn(_ sender: UIButton) {
    }
    
    @IBAction func pushNineBtn(_ sender: UIButton) {
    }
    
    @IBAction func pushPointBtn(_ sender: UIButton) {
    }
    
    @IBAction func pushMinusBtn(_ sender: UIButton) {
    }
}

extension CalculationViewController: UITextFieldDelegate {
}
