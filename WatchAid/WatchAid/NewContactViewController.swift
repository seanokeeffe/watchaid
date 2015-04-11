//
//  NewContactViewController.swift
//  WatchAid
//
//  Created by Sean on 4/10/15.
//  Copyright (c) 2015 Sean O'Keeffe. All rights reserved.
//

import UIKit



class NewContactViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var doneButton: UIButton!
    
    var path: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        path = NSBundle.mainBundle().pathForResource("Contacts", ofType: "plist")!
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func donePushed(sender: AnyObject) {
        //createNewUser()
        
        
        self.dismissViewControllerAnimated(true, completion: nil)
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
