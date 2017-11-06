//
//  ZipCodeFieldDelegate.swift
//  TextFields
//
//  Created by xengar on 2017-11-06.
//  Copyright © 2017 xengar. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate {

    // MARK: Properties
    var translations = [String : String]()

    // MARK: Initializer
    override init() {
        super.init()
        
        translations["a"] = ""
        translations["b"] = ""
        translations["c"] = ""
        translations["d"] = ""
        translations["e"] = ""
        translations["f"] = ""
        translations["g"] = ""
        translations["h"] = ""
        translations["i"] = ""
        translations["j"] = ""
        translations["k"] = ""
        translations["l"] = ""
        translations["m"] = ""
        translations["n"] = ""
        translations["o"] = ""
        translations["p"] = ""
        translations["q"] = ""
        translations["r"] = ""
        translations["s"] = ""
        translations["t"] = ""
        translations["u"] = ""
        translations["v"] = ""
        translations["w"] = ""
        translations["x"] = ""
        translations["y"] = ""
        translations["z"] = ""
        translations["."] = ""
        translations["!"] = ""
    }
    

    /**
     * Examines the new string whenever the text changes.
     */
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        // Limit the text
        /*
        if var content : String = textField.text {
            content.replacingOccurrences(of: "a", with: <#T##StringProtocol#>)
            
            if content.count > 4 {
                content = "1234"
            }
            textField.text = content
        }
        return true */
        
        var replacedACharacter = false
        var characterStringRange: NSRange
        
        // Construct the text that will be in the field if this change is accepted
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        // For each dictionary entry in translations, pull out a string to search for
        // and an emoji to replace it with
        for (character, emptyChar) in translations {
            
            // Search for all occurances of key (ie. "a"), and replace with nothing
            repeat {
                characterStringRange = newText.range(of: character, options: .caseInsensitive)
                
                // found one
                if characterStringRange.location != NSNotFound {
                    newText = newText.replacingCharacters(in: characterStringRange, with: emptyChar) as NSString
                    replacedACharacter = true
                }
                
            } while characterStringRange.location != NSNotFound
        }
        
        var content: String
        if replacedACharacter {
            content = newText as String
        } else {
            content = textField.text!
        }
        // Alow only the fisrt 4
        if content.count >= 4 {
            content = String(content.characters.prefix(4))
            replacedACharacter = true
        }
        
        // If we have replaced a character, then we directly edit the text field
        // Otherwise we allow the proposed edit.
        if replacedACharacter {
            textField.text = content
            return false
        } else {
            return true
        }
        
    }

}
