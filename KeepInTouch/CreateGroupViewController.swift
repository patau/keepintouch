//
//  CreateGroupViewController.swift
//  KeepInTouch
//
//  Created by Patricia Au on 3/2/18.
//  Copyright © 2018 Capstone B09. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
class CreateGroupViewController: UIViewController {

    let groupRef = Database.database().reference().child("groups")
    @IBOutlet weak var groupNameText: UITextField!
    @IBOutlet weak var confirmGroupName: UIButton!
    
    var modelController = ModelController()
    var groupName = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func textChanged(_ sender: UITextView) {
        print(sender.text!)
        groupName = sender.text!
        
        
    }
    
    @IBAction func confirmName(_ sender: UIButton) {
        var groupCode = arc4random()
        var stringCode = String(groupCode)
        groupRef.child(stringCode).child("users").setValue(["name": "dave"])
        groupRef.child(stringCode).child("group data").setValue(["group name": groupName])
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
