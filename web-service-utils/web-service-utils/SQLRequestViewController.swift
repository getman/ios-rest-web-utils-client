//
//  SQLRequestViewController.swift
//  web-service-utils
//
//  Created by Admin on 18.12.17.
//  Copyright © 2017 aparfenov. All rights reserved.
//
import UIKit
import Foundation

class SQLRequestViewController: UIViewController {
    @IBOutlet weak var txtServerPort: UITextField!
    @IBOutlet weak var txtServerHost: UITextField!
    @IBOutlet weak var txtRequest: UITextView!
    @IBOutlet weak var responceTxt: UITextView!
    @IBAction func btnExecuteSqlRequest(_ sender: UIButton) {
        var client = RestClient()
        //let responce = client.executeRequest(sqlRequest: "http://193.124.113.157:8080/")
        let url = "http://" + txtServerHost.text! + ":" + txtServerPort.text! + "/" + txtRequest.text!
        print("request is: \(url)")
        let responce = client.executeRequest(sqlRequest: url)
        print("responce is: \(responce!)")
        responceTxt.text!=responce!
    }
}
