//
//  ApiManager.swift
//  Week4Assessment
//
//  Created by Bersabeh Asefa on 5/10/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class ApiManager {
   private let baseURL = "https://pokeapi.co/api/v2/pokemon"
    
    func getPokemon(name: String, onSuccess: @escaping (JSON) -> Void) {
        let url = URL(string: "\(baseURL)pokemon/\(name)/")
        let request = Alamofire.request(url!)
        
        request.responseJSON { (response) in
            let apiResponse = JSON(response.value)
            print(apiResponse)
            onSuccess(apiResponse)
        }
    }









}





