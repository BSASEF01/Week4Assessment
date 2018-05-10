//
//  ViewController.swift
//  Week4Assessment
//
//  Created by Ryan Brashear on 4/30/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var IDLabel: UILabel!
    
    @IBOutlet weak var weigh: UILabel!

    @IBOutlet weak var textField: UITextField!
    
 let apiManager = ApiManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }



    @IBAction func buttonPressed(_ sender: Any) {
        apiManager.getPokemon(name: textField.text!) { json in
            print(json)
            
            self.nameLabel.text = json["name"].stringValue
            self.IDLabel.text = json["id"].stringValue
            self.weigh.text = json["weight"].stringValue
        }
    
    
    }
    

}

