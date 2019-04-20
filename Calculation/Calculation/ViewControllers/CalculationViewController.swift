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
    var numLabel = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arg1TextField.isHidden = true
        arg2TextField.isHidden = true
        arg3TextField.isHidden = true
        arg4TextField.isHidden = true
        
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
