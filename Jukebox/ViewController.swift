//
//  ViewController.swift
//  Jukebox
//
//  Created by Jacob Kim on 3/9/19.
//  Copyright © 2019 Jacob Kim. All rights reserved.
//

import UIKit
import Alamofire
import FirebaseDatabase

class ViewController: UIViewController {
    
    @IBOutlet weak var SongTextField: UITextField!
    @IBOutlet weak var SubmitButton: UIButton!
    
    var searchURL = "https://api.spotify.com/v1/search?q=Madeon&type=track%2C%20album%2C%20artist"
    typealias JSONStandard = [String: AnyObject]
    
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        callAlamo(url: searchURL)
        // Do any additional setup after loading the view, typically from a nib.
    }

    func callAlamo(url: String) {
        AF.request(url).responseJSON(completionHandler: {
            response in
            self.parseData(JSONData: response.data!)
        })
    }
    
    func parseData(JSONData: Data) {
        do {
            var readableJSON = try JSONSerialization.jsonObject(with: JSONData, options: .mutableContainers) as? JSONStandard
            print(readableJSON)
        }
        catch {
            print(error)
        }
    }
    
    @IBAction func SubmitButtonPressed(_ sender: Any) {
        var info = SongTextField.text
        self.ref.child("songs").setValue(["songTitle": info])
    }
    
}

