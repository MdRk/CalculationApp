//
//  ElementaryNextTableViewController.swift
//  Calculation
//
//  Created by 前田陸 on 2018/11/09.
//  Copyright © 2018年 陸　前田. All rights reserved.
//

import UIKit

class ElementaryNextTableViewController: UITableViewController {

    var selectedCell = ""
    var childCell = ""
    var selectedList = ElementaryModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = self.selectedCell
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch self.selectedCell {
        case "四則演算":
            return selectedList.fourList.count
        case "面積":
            return selectedList.areaList.count
        case "体積":
            return selectedList.volumeList.count
        case "円":
            return selectedList.circleList.count
        case "速さ":
            return selectedList.speedList.count
        case "平均":
            return selectedList.averageList.count
        case "割合":
            return selectedList.rateList.count
        case "濃度":
            return selectedList.concentrationList.count
        default:
            break
        }
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nextCell", for: indexPath)
        
        switch self.selectedCell {
        case "四則演算":
            cell.textLabel!.text = selectedList.fourList[indexPath.row]
            break
        case "面積":
            cell.textLabel!.text = selectedList.areaList[indexPath.row]
            break
        case "体積":
            cell.textLabel!.text = selectedList.volumeList[indexPath.row]
            break
        case "円":
            cell.textLabel!.text = selectedList.circleList[indexPath.row]
            break
        case "速さ":
            cell.textLabel!.text = selectedList.speedList[indexPath.row]
            break
        case "平均":
            cell.textLabel!.text = selectedList.averageList[indexPath.row]
            break
        case "割合":
            cell.textLabel!.text = selectedList.rateList[indexPath.row]
            break
        case "濃度":
            cell.textLabel!.text = selectedList.concentrationList[indexPath.row]
            break
        default:
            break
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch self.selectedCell {
        case "四則演算":
            self.childCell = selectedList.fourList[indexPath.row]
            performSegue(withIdentifier: "toTwoValue", sender: nil)
            break
        case "面積":
            self.childCell = selectedList.areaList[indexPath.row]
            
            if self.childCell == "円" {
                performSegue(withIdentifier: "toOneValue", sender: nil)
            } else if self.childCell == "台形"{
                performSegue(withIdentifier: "toThreeValue", sender: nil)
            } else {
                performSegue(withIdentifier: "toTwoValue", sender: nil)
            }
            break
        default:
            break
        }
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toTwoValue") {
            let nextVC: TwoValueViewController = (segue.destination as? TwoValueViewController)!
            
            nextVC.selectedCell = self.childCell
        } else if (segue.identifier == "toOneValue") {
            let nextVC: OneValueViewController = (segue.destination as? OneValueViewController)!
            
            nextVC.selectedCell = self.childCell
        } else if (segue.identifier == "toThreeValue") {
            let nextVC: ThreeValueViewController = (segue.destination as? ThreeValueViewController)!
            
            nextVC.selectedCell = self.childCell
        }
    }

}
