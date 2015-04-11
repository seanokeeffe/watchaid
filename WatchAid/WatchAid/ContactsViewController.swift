//
//  ContactsViewController.swift
//  WatchAid
//
//  Created by Sean on 4/10/15.
//  Copyright (c) 2015 Sean O'Keeffe. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var contactTable: UITableView!
    
    let cellID = "cell"
    
    var names: [String]! = ["Sean O'Keeffe"]
    var numbers: [String]! = ["858-335-2283"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.contactTable.delegate = self
        self.contactTable.dataSource = self
        self.contactTable.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - Table Data Functions
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.names.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.contactTable.dequeueReusableCellWithIdentifier(cellID, forIndexPath: indexPath) as! UITableViewCell
        let row = indexPath.row
        
        cell.textLabel?.text = self.names[row]
        
        return cell;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
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
