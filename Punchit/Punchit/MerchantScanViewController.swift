//
//  MerchantScanViewController.swift
//  Punchit
//
//  Created by Avinash Jain on 3/22/16.
//  Copyright © 2016 Avinash Jain. All rights reserved.
//

import UIKit
import SwiftQRCode

class MerchantScanViewController: UIViewController {
    
    var scanner = QRCode()
    
    var userid = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        scanner.prepareScan(view) { (stringValue) -> () in
        print(stringValue)
            self.userid = stringValue
            self.performSegueWithIdentifier("details", sender: self)
        }
        scanner.scanFrame = view.bounds 

    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        // start scan
        scanner.startScan()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "details" {
            var vc : MerchantPointsViewController = segue.destinationViewController as! MerchantPointsViewController
            print(userid)
            vc.userID = userid
        
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
