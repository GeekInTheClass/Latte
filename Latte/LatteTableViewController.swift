//
//  LatteTableViewController.swift
//  Latte
//
//  Created by 이현지 on 18/04/2019.
//  Copyright © 2019 이현지. All rights reserved.
//

import UIKit

class LatteTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createBirthday()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    //테이블뷰 섹션의 개수
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    //테이블뷰 로우의 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Birthdays.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Birthday", for: indexPath)

        // Configure the cell...
        let nowBirthday = Birthdays[indexPath.row]

        cell.textLabel?.text = "Bigday " + String(indexPath.row)
        cell.detailTextLabel?.text = "Month: " + String(nowBirthday.Month) + " Day: " + String(nowBirthday.Day)
    
        /*
        if(indexPath.row > 4){
            cell.textLabel?.text = "Supremo"
            cell.detailTextLabel?.text = "Columbia"
        }
        else{
            cell.textLabel?.text = "Robusta"
            cell.detailTextLabel?.text = "Vietnam"
        }*/
        return cell
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if "DETAIL_SUGUE" == segue.identifier,
            let detailVC = segue.destination as? DetailViewController,
            let cell = sender as? UITableViewCell {
                let indexPath = tableView.indexPath(for:cell)!
                let Birthday = Birthdays[indexPath.row]
                
                detailVC.birthday = Birthday
            }
    }
        
        
        
}
        /*if segue.identifier == "MessageSegue" {
            if let destination = segue.destinationViewController as?
                DetailViewController , let selectedIndex = self.tableView.indexPathForSelectedRow?.row
                    destination.birthdays = DataCenter.Birthdays[selectedIndex] as Birthdays
            
        }*/

