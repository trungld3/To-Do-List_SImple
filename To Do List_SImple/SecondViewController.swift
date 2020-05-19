//
//  SecondViewController.swift
//  To Do List_SImple
//
//  Created by TrungLD on 5/19/20.
//  Copyright © 2020 TrungLD. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var itemTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    
 @IBAction func btnAdd1(_ sender: AnyObject) {
        
       let itemsObject = UserDefaults.standard.object(forKey: "items")
               
               var items:[String]
               
               if let tempItems = itemsObject as? [String] {
                   
                   items = tempItems
                   
                   items.append(itemTextField.text!)
                   
                   print(items)
                   
               } else {
                   
                   items = [itemTextField.text!]
                   
               }
               
               UserDefaults.standard.set(items, forKey: "items")
               
               itemTextField.text = ""
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

