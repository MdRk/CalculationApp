//
//  FormulaAnswerView.swift
//  Calculation
//
//  Created by 前田陸 on 2019/04/10.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import UIKit

class FormulaAnswerView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let view = Bundle.main.loadNibNamed("FormulaAnswerView", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        addSubview(view)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }

}
