//
//  HomeTableViewController.swift
//  Calculation
//
//  Created by 前田陸 on 2019/04/12.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import UIKit

class HomeTableViewController: UIViewController {

    @IBOutlet weak var formulaTableView: UITableView!
    
    let itemModel = ItemModel()
    var nextViewTitle = ""
    var nextNumLabel = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        formulaTableView.delegate = self
        formulaTableView.dataSource = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCalculationVC" {
            let nextVC = segue.destination as! CalculationViewController
            nextVC.navigationItem.title = nextViewTitle
            nextVC.numLabel = nextNumLabel
        }
    }
}

extension HomeTableViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return itemModel.items.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return itemModel.items[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemModel.allFormulas![section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = formulaTableView.dequeueReusableCell(withIdentifier: "formulaCell", for: indexPath)
        
        cell.textLabel?.text = itemModel.allFormulas![indexPath.section][indexPath.row]
        
        return cell
    }
}

extension HomeTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        formulaTableView.deselectRow(at: indexPath, animated: true)
        
        self.nextViewTitle = itemModel.allFormulas![indexPath.section][indexPath.row]
        self.nextNumLabel = itemModel.allArguments![indexPath.section][indexPath.row]
        
        if !(indexPath.section == 6 && indexPath.row >= 7) {
            self.performSegue(withIdentifier: "toCalculationVC", sender: nil)
        }
    }
}
