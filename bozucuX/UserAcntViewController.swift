//
//  UserAcntViewController.swift
//  bozucuX
//
//  Created by Urmila on 03/10/17.
//  Copyright © 2017 Urmila. All rights reserved.
//

import UIKit

class UserAcntViewController: UIViewController {

    @IBOutlet weak var acntDet: UILabel!
    
        override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
         print("inside account view")
            
           if let val: String = UserDefaults.standard.string(forKey: "UserMobile")!
           {
            print(val)
            acntDet.text = val
            }
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

}
