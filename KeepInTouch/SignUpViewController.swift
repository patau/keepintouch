//
//  SignUpViewController.swift
//  KeepInTouch
//
//  Created by Patricia Au on 2/28/18.
//  Copyright © 2018 Capstone B09. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    var modelController = ModelController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //var modelController = ModelController
        let userInfo = modelController.userInfo
        print("NAME: ", userInfo.displayName)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func tapNameVCContinue(_ sender: UIBarButtonItem) {
        modelController.userInfo.displayName = nameTextField.text!
        print("UPDATED NAME: ", modelController.userInfo.displayName)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        //var segueVC = SignUpViewController()
        //segueVC.name = self.name
        print("Seguing")
    }
    

}
