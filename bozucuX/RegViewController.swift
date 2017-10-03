//
//  RegViewController.swift
//  bozucuX
//
//  Created by Urmila on 03/10/17.
//  Copyright © 2017 Urmila. All rights reserved.
//

import UIKit

class RegViewController: UIViewController {

    
    @IBOutlet weak var mobilenumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func regstrButton(_ sender: Any) {
            let userMobile = mobilenumber.text;
        
        print(userMobile)
        
        if(userMobile?.isEmpty)!
        {
            displayAlertMsg(userMessage: "Enter your Mobile Number")
            return;
        }
        UserDefaults.standard.set(userMobile, forKey: "UserMobile")
    let val: String = UserDefaults.standard.string(forKey: "UserMobile")!
        print(val)
        self.dismiss(animated: true, completion:nil);
        
    }
    func displayAlertMsg(userMessage: String)
    {
        let myalert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        myalert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(myalert, animated: true, completion: nil)
        
            }

}
