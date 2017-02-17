//
//  SelectUserViewController.swift
//  Snapchat
//
//  Created by ioannis giannakidis on 15/02/2017.
//  Copyright © 2017 ioannis giannakidis. All rights reserved.
//

import UIKit
import Firebase

class SelectUserViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var users: [User] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.dataSource = self
        self.tableView.delegate = self
        FIRDatabase.database().reference().child("users").observe(FIRDataEventType.childAdded, with: {(snapshot) in
            
        print(snapshot)
            
            let user = User()
            user.email = snapshot.childSnapshot(forPath: "email").value as! String
            user.uid =  snapshot.key
            
            self.users.append(user)
            self.tableView.reloadData()
            
        
        })
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    let user = users[indexPath.row]
    cell.textLabel?.text = user.email
    return cell
    }
    
}
