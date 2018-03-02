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

    
    let groupRef = Database.database().reference().child("groups")
    var groupCode = ""
    
    @IBOutlet weak var roomCodeField: UITextField!
    @IBOutlet weak var confrimGroup: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func enterGroupCode(_ sender: UITextField) {
        groupCode = sender.text!
    }
    
    
    @IBAction func confirmGroup(_ sender: UIButton) {
        groupRef.child(groupCode).observeSingleEvent(of: .value, with: { (snapshot) in
            // Get user value
            let value = snapshot.value as? NSDictionary
            let users = value?["users"] as? String ?? ""
            //let user = User(username: username)
            
            // ...
        }) { (error) in
            print(error.localizedDescription)
        }    }
    
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
