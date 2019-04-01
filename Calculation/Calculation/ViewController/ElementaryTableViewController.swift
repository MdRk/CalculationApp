//
//  ElementaryTableViewController.swift
//  Calculation
//
//  Created by 前田陸 on 2018/11/09.
//  Copyright © 2018年 陸　前田. All rights reserved.
//

import UIKit

class ElementaryTableViewController: UITableViewController {

    
    let officialList = ["四則演算", "面積", "体積", "円", "速さ", "平均", "割合", "濃度"]
    let navigationTitle = "小学生"
    var selectedCell = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = navigationTitle
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return officialList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "officialCell", for: indexPath)

        cell.textLabel!.text = officialList[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCell = officialList[indexPath.row]
        
        performSegue(withIdentifier: "toElementaryNext", sender: nil)
    }
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toElementaryNext") {
            let nextVC: ElementaryNextTableViewController = (segue.destination as? ElementaryNextTableViewController)!
            
            nextVC.selectedCell = selectedCell
        }
    }
    

}
