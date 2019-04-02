//
//  FormulaTableView.swift
//  Calculation
//
//  Created by 前田陸 on 2019/04/02.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import UIKit

class FormulaTableView: UIView {

    @IBOutlet weak var formulaTableView: UITableView!
    
    let formulaModel = FormulaModel()
    
    var delegate: FormulaTableView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        initTableView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let view = Bundle.main.loadNibNamed("FormulaTableView", owner: self, options: nil)?.first as! UIView
        view.frame = frame
        addSubview(view)
        initTableView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - TableView init
    func initTableView() {
        formulaTableView.delegate = self
        formulaTableView.dataSource = self
        
        let nib = UINib(nibName: "FormulaTableViewCell", bundle: nil)
        formulaTableView.register(nib, forCellReuseIdentifier: "FormulaTableViewCell")
    }
}

extension FormulaTableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return formulaModel.numCalculation.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.formulaTableView.dequeueReusableCell(withIdentifier: "FormulaTableViewCell", for: indexPath) as! FormulaTableViewCell
        cell.formulaLabel.text = formulaModel.numCalculation[indexPath.row]
        return cell
    }
}
