//
//  PunchPointsViewController.swift
//  Punchit
//
//  Created by Avinash Jain on 3/19/16.
//  Copyright © 2016 Avinash Jain. All rights reserved.
//

import UIKit
import SwiftQRCode
import Firebase


class PunchPointTableViewCell: UITableViewCell {
    
    @IBOutlet var points: UILabel!
    
    @IBOutlet var lastVisit: UILabel!

    @IBOutlet var name: UILabel!
}



class PunchPointsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
        var points = [""]
        var lastVisits = [""]
        var restNames = [""]
    
    @IBOutlet var tableView: UITableView!

        var myRootRef = Firebase(url:"https://punch-it.firebaseio.com/users/")
    
       override func viewDidLoad() {
        super.viewDidLoad()
        
        self.points.removeAll()
        self.lastVisits.removeAll()
        self.restNames.removeAll()
        
        
        var userRef = Firebase(url:"https://punch-it.firebaseio.com/users/\(myRootRef.authData.uid)")
        
        userRef.observeEventType(.Value, withBlock: { snapshot in
            
            self.restNames.removeAll()
            self.points.removeAll()
            self.lastVisits.removeAll()
            
            var dict  = snapshot.value as! NSDictionary
            
            var arr = dict.allKeys as! [String]
            
            for key in arr {
                if key != "provider" && key != "username" {
                    var restInfo = dict[key] as! NSDictionary
                    self.restNames.append(restInfo["restName"] as! String)
                    var transac = restInfo["transaction"] as! NSArray
                    self.lastVisits.append(transac.lastObject as! String)
                    self.points.append(restInfo["points"] as! String)
                    print(self.restNames)
                    print(self.points)
                    print(self.lastVisits)
                }
            }
            
            self.tableView.reloadData()
            
                                    }, withCancelBlock: { error in
                print(error.description)
                
        })


        
        // Do any additional setup after loading the view.
        
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : PunchPointTableViewCell = tableView.dequeueReusableCellWithIdentifier("point") as! PunchPointTableViewCell
        
        cell.name.text = self.restNames[indexPath.row]
        var last = self.lastVisits[indexPath.row].componentsSeparatedByString("-")[3] as! String
        cell.lastVisit.text = last
        cell.points.text = self.points[indexPath.row]
        return cell
        
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.restNames.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(indexPath.row)
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 70.0
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
