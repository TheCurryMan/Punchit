//
//  MerchantPointsViewController.swift
//  Punchit
//
//  Created by Avinash Jain on 3/22/16.
//  Copyright © 2016 Avinash Jain. All rights reserved.
//

import UIKit
import Firebase

class MerchantPointsViewController: UIViewController {

    @IBOutlet var lastVisit: UILabel!
    
    @IBOutlet var earnField: UITextField!
    
    @IBOutlet var redeemField: UITextField!
    
    @IBOutlet var currentPoints: UILabel!
    
    var curPoints = ""
    
    var userID = ""
    
    var restaurantID = ""
    var restaurantPhone = ""
    var link = ""
    
    //var userMerchRef = Firebase(url: "https://punch-it.firebaseio.com")

    
    let ref = Firebase(url: "https://punch-it.firebaseio.com")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapRecognizer = UITapGestureRecognizer()
        tapRecognizer.addTarget(self, action: "didTapView")
        self.view.addGestureRecognizer(tapRecognizer)
        
        
        restaurantID = ref.authData.uid
        
        var userRef = Firebase(url: "https://punch-it.firebaseio.com/users/\(restaurantID)")
        
        print(restaurantID)
         if ref.authData != nil {
        userRef.observeEventType(.Value, withBlock: { snapshot in
            var phone = snapshot.value.objectForKey("phone")
            print(phone!)
            
            self.restaurantPhone = phone! as! String
            
            self.link = ("https://punch-it.firebaseio.com/users/\(self.userID)/\(self.restaurantPhone)")
            self.getMerch()
            }, withCancelBlock: { error in
                print("unable to get restaurant phone")
                print(error.description)
        })
        
        print(restaurantPhone)
        
        }
    
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    func getMerch() {
        
        print("getMerch called.")
    
        let userMerchRef = Firebase(url: link)
        
        userMerchRef.observeEventType(.Value, withBlock: {snapshot in
            print(snapshot)
            var point = snapshot.value.objectForKey("points")
            self.curPoints = point as! String
            self.currentPoints.text = self.curPoints
            }, withCancelBlock: {error in
                print("Current Points for the restaurant don't exist.")
                print(error.description)
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func earn(sender: AnyObject) {
        
        let userMerchRef = Firebase(url: link)
        
        var earnAmount = earnField.text!
        earnField.text = ""
        var finalAmount = 0
        if curPoints == ""{
            finalAmount = Int(earnAmount)!
        }
        else{
            finalAmount = Int(earnAmount)! + Int(curPoints)!
        }
    
        curPoints = String(finalAmount)
        currentPoints.text = curPoints
        
        
        //let merchRef = Firebase(url: "https://punch-it.firebaseio.com/users/\(userID)/")
        
        userMerchRef.setValue(["points": String(finalAmount)])
        
    }
    
    
    @IBAction func redeem(sender: AnyObject) {
        
        let userMerchRef = Firebase(url: link)
        
        var redeemAmount = redeemField.text!
        redeemField.text = ""
        var finalAmount = 0
        if curPoints == ""{
            alert("Error!", message: "Insufficient Number of Points!", action: "Okay")
        }
        else{
            finalAmount = Int(curPoints)! - Int(redeemAmount)!
            
        }
        
        if finalAmount < 0 {
            alert("Error!", message: "Negative Points is not possible!", action: "Okay")
        }
        else {
        
        curPoints = String(finalAmount)
        currentPoints.text = curPoints
            userMerchRef.setValue(["points": String(finalAmount)])
            
        }
        
        
        //let merchRef = Firebase(url: "https://punch-it.firebaseio.com/users/\(userID)/")
        
        
        
        
        
    }
    
    
    func didTapView(){
        self.view.endEditing(true)
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func alert(title: String, message: String, action: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: action, style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)

    }

}
