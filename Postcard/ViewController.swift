//
//  ViewController.swift
//  Postcard
//
//  Created by Rabin Lamichhane on 9/11/14.
//  Copyright (c) 2014 rabTAI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
                            
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextfield: UITextField!
    
    @IBOutlet weak var enterMessageTextfield: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button
        // Adding a comment here to test commits
        messageLabel.hidden=false
        messageLabel.text=enterMessageTextfield.text
        enterMessageTextfield.text=""
        enterMessageTextfield.resignFirstResponder()
        messageLabel.textColor=UIColor.redColor()
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
        nameLabel.hidden=false
        nameLabel.text=enterNameTextfield.text
        nameLabel.text=""
        nameLabel.textColor=UIColor.blueColor()
        nameLabel.resignFirstResponder()
        
    }
}

