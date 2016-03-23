//
//  ScanViewController.swift
//  Punchit
//
//  Created by Avinash Jain on 3/19/16.
//  Copyright © 2016 Avinash Jain. All rights reserved.
//

import UIKit
import SwiftQRCode
import Firebase

class ScanViewController: UIViewController {

    let scanner = QRCode()
    
    let ref = Firebase(url: "https://punch-it.firebaseio.com")
    
    @IBOutlet var iconView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if ref.authData != nil {
            // user authenticated
            iconView.image = QRCode.generateImage(ref.authData.uid, avatarImage: UIImage(named: "avatar"), avatarScale: 0.3)
        } else {
            // No user is signed in
            //performSegueWithIdentifier("signup", sender: self)
            
        }

        
        
        
        /*scanner.prepareScan(view) { (stringValue) -> () in
            print(stringValue)
        }
        scanner.scanFrame = view.bounds */
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        // start scan
        scanner.startScan()
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
