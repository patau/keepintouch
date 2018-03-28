//
//  ConfirmGroupCreationViewController.swift
//  
//
//  Created by Hannah  Mansoori on 3/26/18.
//

import UIKit

class ConfirmGroupCreationViewController: UIViewController {

    @IBOutlet weak var newGroupLabel: UILabel!
    
    @IBOutlet weak var groupCodeLabel: UILabel!
    var modelController = ModelController()
    var groupCode = String()
    var groupName = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let userInfo = modelController.userInfo
        newGroupLabel.text = groupName
        groupCodeLabel.text = groupCode
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if (segue.identifier == "confirmNewGroup") {
//            let segueVC = segue.destination as! ChoosePathViewController
//            print(modelController.userInfo.displayName)
//            segueVC.modelController = self.modelController
//            print("confirmUserInfoSegue: seguing")
//        } else {
//            print("Chump1")
//        }
//        print("Chump2")    }    }
//


}
