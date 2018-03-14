//
//  ModelController.swift
//  KeepInTouch
//
//  Created by Patricia Au on 2/28/18.
//  Copyright © 2018 Capstone B09. All rights reserved.
//

import Foundation
import UIKit

class ModelController {
    static let sharedInstance = ModelController()
    var userInfo = UserInfo(
        displayName: "new user", userIcon: UIImage()
    )
}

