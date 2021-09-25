//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by John Ly on 11/15/20.
//  Copyright © 2020 John Ly. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals: [Meal] {
        let breakfastFood1 = Food(name: "Eggs", description: "Sunny Side Up.")
        let breakfastFood2 = Food(name: "Waffles", description: "Waffles from a waffle iron.")
        let breakfastFood3 = Food(name: "Bacon", description: "Crispy Bacon.")
        let breakfast = Meal(name: "Breakfast", food: [breakfastFood1, breakfastFood2, breakfastFood3])
        
        let lunchFood1 = Food(name: "Sandwich", description: "Ham and Cheese.")
        let lunchFood2 = Food(name: "Chips", description: "Lay's BBQ Chips.")
        let lunchFood3 = Food(name: "Orange", description: "Orange Slices.")
        let lunch = Meal(name: "Lunch", food: [lunchFood1, lunchFood2, lunchFood3])
        
        let dinnerFood1 = Food(name: "Steak", description: "Dry Aged Ribeye")
        let dinnerFood2 = Food(name: "Mashed Potato", description: "Served with Gravy on the side.")
        let dinnerFood3 = Food(name: "String Beans", description: "Blanched String Beans.")
        let dinner = Meal(name: "Dinner", food: [dinnerFood1,dinnerFood2,dinnerFood3])
        
        return [breakfast, lunch, dinner]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)

        // Configure the cell...
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
