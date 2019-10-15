//
//  NetworkManager.swift
//  FortuneCookie
//
//  Created by MattHew Phraxayavong on 10/8/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import Foundation

class NetworkManager: NSObject {
    
    var fortune: FortuneScreenView!
    
    func getFortune(completion: @escaping ([String: Any])->()) {
         let url = URL(string: "https://fortunecookieapi.herokuapp.com/v1/fortunes/5403c81dc2fea4020029ab34")!
         var request = URLRequest(url: url)
//        let data = [];

        

         let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription)
                return
            }
            
            if let httpResponse = response as? HTTPURLResponse {
                print(httpResponse.statusCode)
            }
            
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            
            
            if let responseJSON = responseJSON {
                print(responseJSON as Any)
//                data
//                let  dictionary = responseJSON
//                dictionary!.index(forKey: "message")
//                print("the dict is: \(dictionary)")
//                self.fortune.fortuneResult.text = "the result is \(responseJSON)"
                
            }
            completion(responseJSON!!)
            
         }

         task.resume()
     }

}
