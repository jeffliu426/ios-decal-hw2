//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {
    

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var deleteKeyboardButton: UIButton!
    @IBOutlet var returnKeyboardButton: UIButton!
    @IBOutlet var aKeyboardButton: UIButton!
    
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    @IBAction func writeA(sender: AnyObject) {
        if let button = sender as? UIButton, text = button.titleLabel?.text {
            self.textDocumentProxy.insertText(text)
        }
    }
    
    @IBAction func returnPressed() {
        self.textDocumentProxy.insertText("\n")
    }
    
    @IBAction func deletePressed() {
        self.textDocumentProxy.deleteBackward()
    }
    

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        
        returnKeyboardButton.addTarget(self, action: "returnPressed", forControlEvents: .TouchUpInside)
        aKeyboardButton.addTarget(self, action: "writeA:", forControlEvents: .TouchUpInside)
        
        deleteKeyboardButton.addTarget(self, action: "deletePressed", forControlEvents: .TouchUpInside)
        
        
    }

}


extension CALayer {
    var borderUIColor: UIColor {
        set {
            self.borderColor = newValue.CGColor
            self.borderWidth = 2
        }
        
        get {
            return UIColor(CGColor: self.borderColor!)
        }
    }
}