//
//  PunchCardViewController.swift
//  Punchit
//
//  Created by Avinash Jain on 3/15/16.
//  Copyright © 2016 Avinash Jain. All rights reserved.
//

import UIKit

class PCContentViewController: UIViewController {
    
    @IBOutlet var name: UILabel!
    
    @IBOutlet var cardpunch: UILabel!
    
    var pageIndex: Int!
    var restaurantText: String!
    var punchedText: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.name.text = self.restaurantText
        self.cardpunch.text = self.punchedText
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
