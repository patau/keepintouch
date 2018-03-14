//
//  ChooseImageViewController.swift
//  KeepInTouch
//
//  Created by Patricia Au on 3/13/18.
//  Copyright © 2018 Capstone B09. All rights reserved.
//

import UIKit

class ChooseImageViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    var modelController = ModelController()
    
    var imagePicker = UIImagePickerController()
    @IBOutlet weak var chosenImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let userInfo = modelController.userInfo

        // Do any additional setup after loading the view.
    }
    @IBAction func chooseImageFromGallery(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            
            imagePicker.delegate = self
            imagePicker.sourceType = .savedPhotosAlbum;
            imagePicker.allowsEditing = false
            
            self.present(imagePicker, animated: true, completion: nil)
//            userInfo
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            chosenImage.contentMode = .scaleToFill
            chosenImage.image = pickedImage
            modelController.userInfo.userIcon = pickedImage
            print("Succeeded")
        }
        picker.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "confirmUserInfoSegue") {
            let segueVC = segue.destination as! ConfirmInformationViewController
            segueVC.modelController = self.modelController
            print("chooseImageSegue: seguing")
        } else {
            print("Chump1")
        }
        print("Chump2")
    }

}
