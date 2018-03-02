//
//  SignUpViewController.swift
//  KeepInTouch
//
//  Created by Patricia Au on 2/28/18.
//  Copyright © 2018 Capstone B09. All rights reserved.
//

import UIKit

//import firebase packages
import Firebase
import FirebaseDatabase

class SignUpViewController: UIViewController {
    //initial database reference, use this when you want to talk to it
    let userRef = Database.database().reference().child("users")
    
 
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var profileOption1: UIButton!
    @IBOutlet weak var profileOption2: UIButton!
    @IBOutlet weak var profileOption3: UIButton!
    
    @IBOutlet weak var confirmButton: UIButton!
    
    //@IBOutlet weak var confirmProfileIcon: UIImageView!
    var modelController = ModelController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let userInfo = modelController.userInfo
        print("NAME: ", userInfo.displayName)
      
        
    }

    
    @IBAction func inputtedName(_ sender: UITextView) {
        print("NAMED CHANGED: ", sender.text)
        modelController.userInfo.displayName = sender.text!
        
        /*
        // TODO: ADD THIS TO LAST PAGE OF REGISTRATION
        //assuming that the name gathered from above is the username, we can enter it with
        //the following statement. The displayName will be the key for a new child on the
        //user object
         
        userRef.child(modelController.userInfo.displayName).setValue(["username":
            modelController.userInfo.displayName])
        userRef.child(modelController.userInfo.displayName).setValue(["icon":
            modelController.userInfo.userIcon])
         
         //This same process can be followed for all user related data input, use the
        //userRef variable, pick the child associated with the user being created,
        //and set the field and value
         */
    }

    
    //These functions are super redundant, but they hardcode the user icon based on available
    //default images. This information will be saved along with a user's display name.
    @IBAction func buttonDidClick1(_ sender: UIButton) {
        //print("Img: ", sender.currentImage!)
        modelController.userInfo.userIcon = "Sun"
    }
    
    @IBAction func buttonDidClick2(_ sender: UIButton) {
        //print("Img: ", sender.currentImage!)
        modelController.userInfo.userIcon = "Water"
    }
    
    @IBAction func buttonDidClick3(_ sender: UIButton) {
        //print("Img: ", sender.currentImage!)
        print("Img: grass chosen")
        modelController.userInfo.userIcon = "Grass"
    }
    
    
    @IBAction func confirmClick(_ sender: UIButton){
    userRef.child(modelController.userInfo.displayName).setValue(["username":
            modelController.userInfo.displayName])
    userRef.child(modelController.userInfo.displayName).setValue(["icon":
            modelController.userInfo.userIcon])
        print(modelController.userInfo.userIcon)
        print(modelController.userInfo.displayName)
        
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
        if (segue.identifier != "groupsChoose") {
            var segueVC = segue.destination as! SignUpViewController
            segueVC.modelController = self.modelController
            print("Seguing")
        }
        
    }
    

}
