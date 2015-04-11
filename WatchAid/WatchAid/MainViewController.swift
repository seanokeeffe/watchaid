//
//  MainViewController.swift
//  WatchAid
//
//  Created by Sean on 4/10/15.
//  Copyright (c) 2015 Sean O'Keeffe. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var editContacts: UIButton!
    
    let emergContact = "Sean O'Keeffe";
    let emergPhone = "858-335-2283";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpDisplay();
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Initial Set Up
    
    func setUpDisplay() {
        nameLabel.text = emergContact;
        numberLabel.text = emergPhone;
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
