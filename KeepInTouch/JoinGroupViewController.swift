//
//  JoinGroupViewController.swift
//  KeepInTouch
//
//  Created by Patricia Au on 3/2/18.
//  Copyright © 2018 Capstone B09. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
class JoinGroupViewController: UIViewController {

    var modelController = ModelController()
    let groupRef = Database.database().reference().child("groups")
    var groupCode = String()
    var groupName = String()
    
    @IBOutlet weak var roomCodeField: UITextField!
    @IBOutlet weak var confrimGroup: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let userInfo = modelController.userInfo
        // Do any additional setup after loading the view.
    }

    @IBAction func enterGroupCode(_ sender: UITextField) {
        groupCode = sender.text!
    }
    
    
    @IBAction func confirmGroup(_ sender: UIButton) {
        groupRef.observeSingleEvent(of: .value, with: { (snapshot) in
            if snapshot.hasChild(self.groupCode) { //Group is found
                print("found room")
                let uid = self.modelController.userInfo.userID
                let userName = self.modelController.userInfo.displayName
                let addUser = ["/users/\(uid)": userName]
                self.groupRef.child(self.groupCode).updateChildValues(addUser)
//                self.groupName = self.groupRef.child(self.groupCode).child("group data").child("group name").value(forKey: "group name") as! String
                
            } else { //Group is not found
                print("error")
            }

        }) { (error) in //Overall error in contacting firebase
            print(error.localizedDescription)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
    }
    
}
    


