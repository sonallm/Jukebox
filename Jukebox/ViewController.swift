//
//  ViewController.swift
//  Jukebox
//
//  Created by Jacob Kim on 3/9/19.
//  Copyright © 2019 Jacob Kim. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ViewController: UIViewController {

    var ref: DatabaseReference! = Database.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

