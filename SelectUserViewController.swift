//
//  SelectUserViewController.swift
//  Snapchat
//
//  Created by ioannis giannakidis on 15/02/2017.
//  Copyright © 2017 ioannis giannakidis. All rights reserved.
//

import UIKit

class SelectUserViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    
}
