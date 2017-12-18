//
//  RestClient.swift
//  web-service-utils
//
//  Created by Admin on 18.12.17.
//  Copyright © 2017 aparfenov. All rights reserved.
//

import Foundation

class RestClient {
    var dataTask: URLSessionDataTask?
    
    func executeRequest(sqlRequest: String) -> String? {
        let request = URLRequest(url: NSURL(string: sqlRequest)! as URL)
        // Perform the request
        var response: AutoreleasingUnsafeMutablePointer<URLResponse?>? = nil
        let data = try! NSURLConnection.sendSynchronousRequest(request, returning: response)
        let responseData = String(data: data, encoding: String.Encoding(rawValue: String.Encoding.utf8.rawValue))
        print("result : \(responseData)")
        return responseData
    }
}
