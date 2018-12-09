//
//  Controller.swift
//  MOB-1.2-StudyGuide-TM-V_1
//
//  Created by timofey makhlay on 12/8/18.
//  Copyright © 2018 Timofey Makhlay. All rights reserved.
//

import UIKit
import Foundation

class Controller {
    // Variables to distinguish and store the different controllers/views
    var name: String
    var controllerName: UIViewController
    
    init(controllerName:String, controllerFile:UIViewController) {
        self.name = controllerName
        self.controllerName = controllerFile
    }
}
