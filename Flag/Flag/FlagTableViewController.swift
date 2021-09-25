//
//  FlagTableViewController.swift
//  Flag
//
//  Created by John Ly on 11/22/20.
//  Copyright © 2020 John Ly. All rights reserved.
//

import UIKit

class FlagTableViewController: UITableViewController {

    var flags: [Flag] = [Flag(symbol: "🇬🇧", name: "United Kingdom", capital: "London"), Flag(symbol: "🇮🇹", name: "Italy", capital: "Rome"), Flag(symbol: "🇧🇷", name: "Brazil", capital: "Brasila"),Flag(symbol: "🇧🇪", name: "Belgium", capital: "Brussels")]
    
    var flagsArray:[[Flag]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return flags.count
        } else {
            return 0
        }    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FlagCell", for: indexPath) as! FlagTableViewCell
        
        // Configure the cell...
        let flag = flags[indexPath.row]
        
        cell.update(with: flag)
        cell.showsReorderControl = true
        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let flag = flags[indexPath.row]
        print("\(flag.symbol) \(indexPath)")
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            flags.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        } //else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        //}
    }
    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let movedFlag = flags.remove(at: fromIndexPath.row)
        flags.insert(movedFlag, at: to.row)
        tableView.reloadData()
    }
    
   
   

   
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
       
       
       if segue.identifier == "EditFlag" {
           
           let section = tableView.indexPathForSelectedRow!.section
            guard Int(section.description) != nil else {return}
           
           
           
           let row = tableView.indexPathForSelectedRow!.row
           let flag = flagsArray[section][row]
           let addEditFlagTableViewController = segue.destination as? AddEditFlagTableViewController
           addEditFlagTableViewController?.flag = flag
           
           
       } else if segue.identifier == "AddFlag" {
           let navigationController = segue.destination as? UINavigationController
           let addEditFlagTableViewController = navigationController?.topViewController as? AddEditFlagTableViewController
           addEditFlagTableViewController?.navigationItem.title = "Add Flag"
           
       }
       
   }
   
   @IBAction func unwindToFlagTableView(segue: UIStoryboardSegue) {
       
       guard segue.identifier == "saveUnwind" else {return}
       let sourceViewController = segue.source as! AddEditFlagTableViewController
       if let flag = sourceViewController.flag {
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
            flagsArray[selectedIndexPath.row] = flags
               
            tableView.reloadRows(at: [selectedIndexPath], with: .none)
            
               
           }else {
               
            let newIndexPath = IndexPath(row: flagsArray.count, section: 0)
            flagsArray.append(flags)
            tableView.insertRows(at: [newIndexPath], with: .automatic)
           }
           
       }
     
   }
   
   @IBAction func refreshControlActivated(_ sender: UIRefreshControl){
       tableView.reloadData()
       sender.endRefreshing()
   }
    
    
    
    
}
