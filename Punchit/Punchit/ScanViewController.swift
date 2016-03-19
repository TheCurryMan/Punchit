//
//  ScanViewController.swift
//  Punchit
//
//  Created by Avinash Jain on 3/19/16.
//  Copyright © 2016 Avinash Jain. All rights reserved.
//

import UIKit
import SwiftQRCode

class ScanViewController: UIViewController {

    let scanner = QRCode()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scanner.prepareScan(view) { (stringValue) -> () in
            print(stringValue)
        }
        scanner.scanFrame = view.bounds
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
