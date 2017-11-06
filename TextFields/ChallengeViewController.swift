//
//  ChallengeViewController.swift
//  TextFields
//
//  Created by xengar on 2017-11-06.
//  Copyright © 2017 xengar. All rights reserved.
//

import UIKit

class ChallengeViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var editSwitch: UISwitch!
    
    
    /**
     *    dismiss this view controller
     */
    @IBAction func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }

}
