//
//  FormulaTableViewCell.swift
//  Calculation
//
//  Created by 前田陸 on 2019/04/02.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import UIKit

class FormulaTableViewCell: UITableViewCell {

    @IBOutlet weak var formulaLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        let view = Bundle.main.loadNibNamed("FormulaTableViewCell", owner: self, options: nil)?.first as! UIView
        view.frame = frame
        addSubview(view)
        // Configure the view for the selected state
    }
    
}
