//
//  SnapsViewController.swift
//  Snapchat
//
//  Created by ioannis giannakidis on 13/02/2017.
//  Copyright © 2017 ioannis giannakidis. All rights reserved.
//

import UIKit

class SnapsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func logoutTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    
  }
