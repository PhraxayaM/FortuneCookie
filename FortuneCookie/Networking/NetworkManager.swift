//
//  NetworkManager.swift
//  FortuneCookie
//
//  Created by MattHew Phraxayavong on 10/8/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import Foundation

class NetworkManager: NSObject {
    
    func getFortune() {
         let url = URL(string: "http://fortunecookieapi.com/v1/fortunes?limit=&skip=&page=")!
         var request = URLRequest(url: url)

         let task = URLSession.shared.dataTask(with: request) { data, response, error in
           if let response = response {
             print(response)

             if let data = data, let body = String(data: data, encoding: .utf8) {
               print(body)
             }
           } else {
             print(error ?? "Unknown error")
           }
         }

         task.resume()
     }

}
