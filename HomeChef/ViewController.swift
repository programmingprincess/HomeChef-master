//
//  ViewController.swift
//  HomeChef
//
//  Created by Jiaqi Wu on 1/22/16.
//  Copyright (c) 2016 Jiaqi Wu. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var beginButton: UIButton!
    @IBOutlet weak var meatsButton: UIButton!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Parameters
        let ingredients = "bread,eggs,milk"
        let limitLicense = false
        let number = 4
        let ranking = 1
        
        let url = NSURL(string: "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/findByIngredients?ingredients=\(ingredients)&limitLicense=\(limitLicense)&number=\(number)&ranking=\(ranking)")
        
        let headers = [
            "X-Mashape-Key": "NHDnizUDH5mshbK6fNDHtFJAQRpDp1zYm3FjsnAVFgzGtVfsXi",
            "Accept": "application/json"
        ]
        // API Request
        Alamofire.request(.GET, url!, headers: headers, encoding: .JSON).responseJSON {
            response in switch response.result {
                
                //API Response
            case .Success:
                /*
                let json = JSON(response.result.value!)
                var myID = json[0]["id"]
                
                let defaults = NSUserDefaults.standardUserDefaults()
                defaults.setObject(myID.stringValue, forKey: "json-id")
                defaults.synchronize()
                */
                var myIDs = [String]()
                let json = JSON(response.result.value!)
                print("JSON: \(json)")
                
                for i in 0...(json.count-1) {
                    print(json[i]["id"])
                    myIDs.insert(json[i]["id"].stringValue, atIndex: i)
                }

                let defaults = NSUserDefaults.standardUserDefaults()
                defaults.setObject(myIDs, forKey:"json-id")
                
            case .Failure:
                print("Request failed with error:")
            }
        }
    }

        
    
    @IBAction func category_onTap(sender: UIButton) {
    
    }
}

