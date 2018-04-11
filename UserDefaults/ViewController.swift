//
//  ViewController.swift
//  UserDefaults
//
//  Created by Sundir Talari on 31/03/18.
//  Copyright © 2018 Sundir Talari. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        
        if let name = UserDefaults.standard.value(forKey: "name") as? String {
            
            displayLabel.text = name
        }

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nameText.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.tag == 1 {
            displayLabel.text = textField.text
            
            UserDefaults.standard.set(textField.text, forKey: "name")
            
            var myarr = [Int]()
            myarr.append(1)
            
            
            var dict = [String: String]()
            dict["name"] = "santhosh"
            dict["address"] = "kadapa"
        
            dict["name"] = "sudarshan"
            print(dict)
            
            
        }
        return true
    }

}

