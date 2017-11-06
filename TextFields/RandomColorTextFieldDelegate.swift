//
//  RandomColorTextFieldDelegate.swift
//  TextFields
//
//  Created by xengar on 2017-11-06.
//  Copyright © 2017 xengar. All rights reserved.
//

import Foundation
import UIKit

class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    // MARK: Properties

    
    /**
     * Generates a random color
     */
    func randomColor() -> UIColor {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 11
        var color: UIColor
        switch randomValue {
            case 1:
                color = UIColor.red
            case 2:
                color = UIColor.orange
            case 3:
                color = UIColor.yellow
            case 4:
                color = UIColor.green
            case 5:
                color = UIColor.blue
            case 6:
                color = UIColor.brown
            case 7:
                color = UIColor.black
            case 8:
                color = UIColor.purple
            case 9:
                color = UIColor.cyan
            case 10:
                color = UIColor.magenta
            case 11:
                color = UIColor.white
            default:
                color = UIColor.red
        }
        return color
    }
    
    /**
     * Examines the new string whenever the text changes. Determine random color, and set the text color
     */
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // Set the color of your text here!
        textField.textColor = randomColor()
        return true
    }
}
