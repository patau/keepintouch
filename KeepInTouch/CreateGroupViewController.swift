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
    var stringCode = String()
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
        let groupCode = arc4random()
        stringCode = String(groupCode)
        groupRef.child(stringCode).child("users").setValue(["name": modelController.userInfo.displayName])
        groupRef.child(stringCode).child("group data").setValue(["group name": groupName])
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "confirmNewGroup") {
            let segueVC = segue.destination as! ConfirmGroupCreationViewController
            segueVC.modelController = self.modelController
            segueVC.groupName = self.groupName
            segueVC.groupCode = self.stringCode
            print("confirmNewGroupSegue: seguing")
        } else {
            print("Chump1")
        }
        print("Chump2")    }    }
    


