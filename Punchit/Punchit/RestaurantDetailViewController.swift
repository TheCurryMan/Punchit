//
//  RestaurantDetailViewController.swift
//  Punchit
//
//  Created by Avinash Jain on 3/20/16.
//  Copyright © 2016 Avinash Jain. All rights reserved.
//

import UIKit
import Firebase

class DetailedViewTableCell : UITableViewCell {

    @IBOutlet var itemName: UILabel!

    @IBOutlet var itemPoints: UILabel!
}

class RestaurantDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var name = ""
    var promotion = ""
    var points = ""
    var tiers = [""]
    var address = ""
    var distance = ""
    var imageURL = NSURL()
    var review = ""
    var phoneNumber = ""
    var phoneSimple = ""
    var tier1 = ""
    var tier2 = ""
    var tier3 = ""
    var tier4 = ""
    var tierCount = 0
    
    var myRootRef = Firebase(url:"https://punch-it.firebaseio.com/")

    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var rName: UILabel!
    
    @IBOutlet var rPromotion: UILabel!
    
    @IBOutlet var rPoints: UILabel!
    
    @IBOutlet var rTiers: UITableView!
    
    @IBOutlet var rAddress: UILabel!
    
    @IBOutlet var rNumDistance: UILabel!
    
    @IBOutlet var rImage: UIImageView!
    
    @IBOutlet var rReview: UILabel!
    
    
    var curPoints = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rName.text = name
        rAddress.text = address
        rNumDistance.text = phoneNumber + " | " + distance
        rImage.image = UIImage(data: NSData(contentsOfURL: imageURL)!)
        rReview.text = review
        
        // Get a reference to our posts
        var ref = Firebase(url:"https://punch-it.firebaseio.com/restaurants/\(phoneSimple)")

        // Attach a closure to read the data at our posts reference
        ref.observeEventType(.Value, withBlock: { snapshot in

            var prom = snapshot.value["promotion"]
            self.rPromotion.text = snapshot.value.objectForKey("promotion") as! String
            var tierData  = snapshot.value.objectForKey("tiers")
            self.tierCount = tierData!.count
            do {
            self.tier1 = try tierData!["tier1"]! as! String
            self.tier2 = try tierData!["tier2"]! as! String
            self.tier3 = try tierData!["tier3"]! as! String
            self.tier4 = try tierData!["tier4"]! as! String
           self.getPoints()
            
            self.tableView.reloadData()
            
            } catch {
                print("Some tier was not filled.")
            }
            
            
            
            }, withCancelBlock: { error in
                print(error.description)
        })
        
        

        // Do any additional setup after loading the view.
    }
    
    func getPoints(){
        if myRootRef.authData != nil {
        
        var userRef = Firebase(url:"https://punch-it.firebaseio.com/users/\(myRootRef.authData.uid)/\(phoneSimple)")
        
            if userRef.authData != nil {
            
        userRef.observeEventType(.Value, withBlock: { snapshot in
            
            var poin = snapshot.value.objectForKey("points")
            self.curPoints = Int(poin as! String)!
            self.rPoints.text = poin as! String + " Points"
            self.tableView.reloadData()
            }, withCancelBlock: { error in
                print(error.description)
                self.curPoints = 0
        })
                
            
            } }
        
        else {
            print("please be authenticated")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(indexPath.row)
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return CGFloat(144.0/Double(tierCount))
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tierCount
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : DetailedViewTableCell = tableView.dequeueReusableCellWithIdentifier("custom") as! DetailedViewTableCell
        self.tiers = [tier1, tier2, tier3, tier4]
        cell.itemName.text = tiers[indexPath.row].componentsSeparatedByString(":")[1]
        cell.itemPoints.text = tiers[indexPath.row].componentsSeparatedByString(":")[0]
        //print(Int(rPoints.text!)!)
        //print(Int(tiers[indexPath.row].componentsSeparatedByString(":")[0])!)
        if  curPoints >= Int(tiers[indexPath.row].componentsSeparatedByString(":")[0])! {
           
            cell.contentView.backgroundColor = UIColor.greenColor()
            print("Should be green color")
        }
        else {
            cell.contentView.backgroundColor = UIColor.lightGrayColor()
        }
        
        return cell
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
