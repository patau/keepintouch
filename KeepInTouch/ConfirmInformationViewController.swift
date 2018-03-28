//
//  ConfirmInformationViewController.swift
//  KeepInTouch
//
//  Created by Patricia Au on 3/13/18.
//  Copyright © 2018 Capstone B09. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ConfirmInformationViewController: UIViewController {
    var modelController = ModelController()
    @IBOutlet weak var chosenImage: UIImageView!
    //initial database reference, use this when you want to talk to it
    let userRef = Database.database().reference().child("users")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let userInfo = modelController.userInfo
        chosenImage.image = userInfo.userIcon
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("BEGIN PUSH: username")
        var newRef = userRef.childByAutoId()
        newRef.setValue(["username":
        modelController.userInfo.displayName])
        var uid = newRef.key
        modelController.userInfo.userID = uid
        print("PUSH: icon")
        // TODO: PUSH FILE, NOT STRING, TO DB
        //userRef.child(modelController.userInfo.userIcon).setValue(["icon": modelController.userInfo.userIcon])
        print("PUSHED")
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "groupsChoose") {
            let segueVC = segue.destination as! ChoosePathViewController
            print(modelController.userInfo.displayName)
            segueVC.modelController = self.modelController
            print("confirmUserInfoSegue: seguing")
        } else {
            print("Chump1")
        }
        print("Chump2")    }
    

}
