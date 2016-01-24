//
//  RecipeViewController.swift
//  HomeChef
//
//  Created by Jiaqi Wu on 1/24/16.
//  Copyright © 2016 Jiaqi Wu. All rights reserved.
//
        /*
import UIKit
import SwiftyJSON
import Alamofire

class RecipeViewController: UITableViewController {
    
    override func viewDidLoad() {

        let defaults = NSUserDefaults.standardUserDefaults()
        var myData = defaults.objectForKey("json-id")
        
        let url = NSURL(string: "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/food/products/\(myData![0])")
        
        
        let headers = [
            "X-Mashape-Key": "NHDnizUDH5mshbK6fNDHtFJAQRpDp1zYm3FjsnAVFgzGtVfsXi",
            "Accept": "application/json"
        ]
        
        Alamofire.request(.GET, url!, headers: headers, encoding: .JSON).responseJSON {
            response in switch response.result {
                //API Response
            case .Success:
                let json = JSON(response.result.value!)
                print(json)
                
            case .Failure:
                print("Request failed with error:")
            }

        }
        
        override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 4
        }
    }
*/
