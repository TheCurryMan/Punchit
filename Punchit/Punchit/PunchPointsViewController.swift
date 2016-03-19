//
//  PunchPointsViewController.swift
//  Punchit
//
//  Created by Avinash Jain on 3/19/16.
//  Copyright © 2016 Avinash Jain. All rights reserved.
//

import UIKit
import SwiftQRCode

class PunchPointsViewController: UIViewController {

    @IBOutlet var iconView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        iconView.image = QRCode.generateImage("Hello SwiftQRCode", avatarImage: UIImage(named: "avatar"), avatarScale: 0.3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
