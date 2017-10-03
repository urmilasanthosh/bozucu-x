//
//  MobVerifyViewController.swift
//  bozucuX
//
//  Created by Urmila on 03/10/17.
//  Copyright © 2017 Urmila. All rights reserved.
//

import UIKit

class MobVerifyViewController: UIViewController {


    @IBOutlet weak var verifyOTPTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func verifyButton(_ sender: Any) {
        let otpnumval = verifyOTPTextfield.text
        if(otpnumval=="1234")
        {
            
            displayAlertMsg(userMessage: "Your Mobile Number is Verified !!!!..")
            return;
        }
        
    }
    func displayAlertMsg(userMessage: String)
    {
        let myalert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        myalert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(myalert, animated: true, completion: nil)
        
    }

}


