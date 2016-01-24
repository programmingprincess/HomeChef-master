//
//  categoryTypeTableView.swift
//  HomeChef
//
//  Created by Julio Hernandez-Duran on 1/23/16.
//  Copyright © 2016 Jiaqi Wu. All rights reserved.
//

import UIKit

class categoryTypeTableView: UITableViewController {

    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("FoodCell", forIndexPath: indexPath) as! foodCell
        
        let imgName = foodList[indexPath.row].img
        let name = foodList[indexPath.row].name 
        
        cell.recipeImageView.image = UIImage(named: imgName)
        cell.receiptLabel.text = name
        
        return cell
    }
}


var foodList = [foodData(name: "Steak", img: "M1.jpg"),
                foodData(name: "Lamb", img: "M2.jpg"),
                foodData(name: "Chicken", img: "M3.jpg"),
                foodData(name: "Pork", img: "M4.jpg")]
