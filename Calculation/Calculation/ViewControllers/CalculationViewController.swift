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
    @IBOutlet weak var answerLabel: UILabel!
    
    let itemModel = ItemModel()
    let numCalculationModel = NumCalculationModel()
    let oneArguModel = OneArguModel()
    
    // キーボードを非表示にするためのダミーView
    let dummyView = UIView()
    // 公式を描画するための指標
    var proof = 0
    // 引数の数
    var argNum = 1
    
    var answerNum = 0
    var answerString = ""
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setupTextField()
        displayFormula(sender: proof)
    }
    
    private func setupTextField() {
        
        // 引数１を選択状態にする
        arg1TextField.becomeFirstResponder()
        
        arg1TextField.text = ""
        arg2TextField.text = ""
        arg3TextField.text = ""
        arg4TextField.text = ""
        answerLabel.text = "="
        
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
    }
    
    private func displayFormula(sender: Int) {
        
        if sender == 11 {
            oneArguModel.oneText(frameView: calculationView, argTextField: arg1TextField)
        }
    }
    
    private func inputTextNum(selectText: UITextField,  sender: UIButton) {
        
        // ボタン（ACとCと=以外）が押されたら式を表示する
        guard let formulaText = selectText.text else {
            return
        }
        guard let senderedText = sender.titleLabel?.text else {
            return
        }
        selectText.text = formulaText + senderedText
    }
    
    @IBAction func pushAllCleanBtn(_ sender: UIButton) {
        
        arg1TextField.text = ""
        arg2TextField.text = ""
        arg3TextField.text = ""
        arg4TextField.text = ""
        
        answerLabel.text = "="
    }
    
    @IBAction func pushCleanBtn(_ sender: UIButton) {
        
        if argNum == 1 {
            arg1TextField.text = ""
        } else if argNum == 2 {
            arg2TextField.text = ""
        } else if argNum == 3 {
            arg3TextField.text = ""
        } else if argNum == 4 {
            arg4TextField.text = ""
        }
        
        answerLabel.text = "="
    }
    
    @IBAction func pushEqualBtn(_ sender: UIButton) {
        
        answerNum = Int(arg1TextField.text!)!
        answerString = numCalculationModel.binary(num1: answerNum)
        answerLabel.text = "= " + answerString
    }
    
    @IBAction func pushNumBtn(_ sender: UIButton) {
        
        if argNum == 1 {
            inputTextNum(selectText: arg1TextField, sender: sender)
        } else if argNum == 2 {
            inputTextNum(selectText: arg2TextField, sender: sender)
        } else if argNum == 3 {
            inputTextNum(selectText: arg3TextField, sender: sender)
        } else if argNum == 4 {
            inputTextNum(selectText: arg4TextField, sender: sender)
        }
    }
    
}

extension CalculationViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == arg1TextField {
            argNum = 1
        } else if textField == arg2TextField {
            argNum = 2
        } else if textField == arg3TextField {
            argNum = 3
        } else if textField == arg4TextField {
            argNum = 4
        }
    }
}
