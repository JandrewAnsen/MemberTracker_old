//
//  ViewController.swift
//  MemberTracker_old
//
//  Created by Andrew H T Jansen on 2016/10/28.
//  Copyright © 2016 Cowmpany. All rights reserved.
//

import Cocoa
import MySqlSwiftNative

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Queries.Connect()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func FindMember_Clicked(sender: AnyObject) {
        var members = Queries.GetAllMembers()
        
    }

}

