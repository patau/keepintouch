//
//  ChoosePathViewController.swift
//  KeepInTouch
//
//  Created by Hannah  Mansoori on 3/26/18.
//  Copyright © 2018 Capstone B09. All rights reserved.
//

import UIKit

class ChoosePathViewController: UIViewController {

    var modelController = ModelController()
    override func viewDidLoad() {
        super.viewDidLoad()
        let userInfo = modelController.userInfo
        print(modelController.userInfo.displayName)

        // Do any additional setup after loading the view.
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
        if (segue.identifier == "createGroup") {
            let segueVC = segue.destination as! CreateGroupViewController
            segueVC.modelController = self.modelController
            print("groupsChooseSegue: seguing")
        }
        else if (segue.identifier == "joinGroup") {
            let segueVC = segue.destination as! JoinGroupViewController
            segueVC.modelController = self.modelController
            print("groupsChooseSegue: seguing")
        }
        else {
            print("Chump1")
        }
        print("Chump2")    }
    

}
