//
//  ViewSnapViewController.swift
//  Snapchat
//
//  Created by ioannis giannakidis on 20/02/2017.
//  Copyright © 2017 ioannis giannakidis. All rights reserved.
//

import UIKit
import SDWebImage
import Firebase

class ViewSnapViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var snap = Snap()
    
    override func viewDidLoad() {
        super.viewDidLoad()
  label.text = snap.descrip
        imageView.sd_setImage(with: URL(string: snap.imageURL))
    
    }
    override func viewWillDisappear(_ animated: Bool) {
     FIRDatabase.database().reference().child("users").child(FIRAuth.auth()!.currentUser!.uid).child("snaps").child(snap.key).removeValue()
        
        FIRStorage.storage().reference().child("images").child("\(snap.uuid).jpg").delete { (error) in
            print("we deleted the pic")
        }
    
    }

    
}
