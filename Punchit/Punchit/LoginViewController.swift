//
//  LoginViewController.swift
//  Punchit
//
//  Created by Avinash Jain on 3/19/16.
//  Copyright © 2016 Avinash Jain. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    
    @IBOutlet var email: UITextField!

    @IBOutlet var password: UITextField!
    
    var merchant = false
    
    var ref = Firebase(url:"https://punch-it.firebaseio.com/")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login(sender: UIButton) {
        
        ref.authUser(email.text, password: password.text) {
            error, authData in
            if error != nil {
                // an error occured while attempting login
            } else {
                // user is logged in, check authData for data
                print(authData.uid)
                
                var teatoptiers = ["15": "1 Free PMT", "40": "2 Free PMTs"]
                var data = ["promotion":"Get a free PMT if you spend $15!", "tiers": teatoptiers]
                self.ref.childByAppendingPath("restaurants").childByAppendingPath("teatop").setValue(data)
                
                /*var userRef = Firebase(url:"https://punch-it.firebaseio.com/users/\(authData.uid)")
                var userDat = ["":""] as Dictionary
                userRef.observeEventType(.Value, withBlock: { snapshot in
                    userDat = (snapshot.value) as! Dictionary
                    }, withCancelBlock: { error in
                        print(error.description)
                })
                
                userDat["teatop"] = "5"
                
                self.ref.childByAppendingPath("users").childByAppendingPath(authData.uid).updateChildValues(userDat) */
                self.performSegueWithIdentifier("userloggedin", sender: self)
            }
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
