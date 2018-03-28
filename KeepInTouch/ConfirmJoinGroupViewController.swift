//
//  ConfirmJoinGroupViewController.swift
//  KeepInTouch
//
//  Created by Hannah  Mansoori on 3/27/18.
//  Copyright © 2018 Capstone B09. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
class ConfirmJoinGroupViewController: UIViewController {
    var modelController = ModelController()
    var groupCode = String()
    var groupName = String()
    
    @IBOutlet weak var ConfirmText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if groupName != "" {
            ConfirmText.text = "Do you want to join the group called: " + groupName + " ?"
        }
        else {
            ConfirmText.text = "We could not find a group with a group code of: " + groupCode
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
