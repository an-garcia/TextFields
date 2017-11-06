//
//  ChallengeViewController.swift
//  TextFields
//
//  Created by xengar on 2017-11-06.
//  Copyright © 2017 xengar. All rights reserved.
//

import UIKit

class ChallengeViewController: UIViewController, UITextFieldDelegate {

    // MARK: Outlets
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var editSwitch: UISwitch!
    
    // MARK: Text Field Delegate objects
    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let cashDelegate = CashTextFieldDelegate()
    
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set the three delegates
        self.textField1.delegate = zipCodeDelegate
        self.textField2.delegate = cashDelegate
        
    }
    
    
    /**
     *    dismiss this view controller
     */
    @IBAction func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func enableDisableTextField() {
        textField3.isEnabled = editSwitch.isOn
    }

}
