//
//  ConfirmGroupCreationViewController.swift
//  
//
//  Created by Hannah  Mansoori on 3/26/18.
//

import UIKit

class ConfirmGroupCreationViewController: UIViewController {

    var modelController = ModelController()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let userInfo = modelController.userInfo
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
