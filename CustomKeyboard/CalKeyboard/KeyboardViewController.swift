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
    @IBOutlet var spaceKeyboardButton: UIButton!
    
//    @IBOutlet var aKeyboardButton: UIButton!
//    
    @IBOutlet var cartmanDivaButton: UIButton!
    @IBOutlet var screwYouGuysButton: UIButton!
    @IBOutlet var respectButton: UIButton!
    
    @IBOutlet var mmmkayButton: UIButton!
    @IBOutlet var sadPandaButton: UIButton!
    @IBOutlet var killedKennyButton: UIButton!
    @IBOutlet var kickTheBabyButton: UIButton!
    @IBOutlet var satanButton: UIButton!
    @IBOutlet var jobsButton: UIButton!
    @IBOutlet var goneButton: UIButton!
    
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
    
    @IBAction func writeCartmanDiva() {
        self.textDocumentProxy.insertText("Whateva! I do what I want!")
    }
    
    @IBAction func writeScrewYouGuys() {
        self.textDocumentProxy.insertText("Screw you guys, I'm going home!!")
    }
    
    
    @IBAction func writeMmmkay() {
        self.textDocumentProxy.insertText("Mmmkay")
    }
    
    @IBAction func writeSadPanda() {
        self.textDocumentProxy.insertText("That makes me a saaaad panda")
    }
    
    @IBAction func writeRespect() {
        self.textDocumentProxy.insertText("Respect my authoritah!")
    }
    
    @IBAction func writeKilledKenny() {
        self.textDocumentProxy.insertText("Oh my god they killed Kenny! You Bastards!")
    }
    
    @IBAction func writeKickTheBaby() {
        self.textDocumentProxy.insertText("Kick the baby!")
    }
    
    @IBAction func writeSatan() {
        self.textDocumentProxy.insertText("Without evil there could be no good, so it must be good to be evil sometimes.")
    }
    
    @IBAction func writeJobs() {
        self.textDocumentProxy.insertText("They took 'er jobs!")
    }
    
    @IBAction func writeGone() {
        self.textDocumentProxy.insertText("Aaaaand it's gone!")
    }
    
    @IBAction func spacePressed() {
        self.textDocumentProxy.insertText(" ")
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
        
        spaceKeyboardButton.addTarget(self, action: "spacePressed", forControlEvents: .TouchUpInside)
        
        returnKeyboardButton.addTarget(self, action: "returnPressed", forControlEvents: .TouchUpInside)
//        aKeyboardButton.addTarget(self, action: "writeA:", forControlEvents: .TouchUpInside)
        
        deleteKeyboardButton.addTarget(self, action: "deletePressed", forControlEvents: .TouchUpInside)
        
        // Cartman Diva Button
        let cartmanDivaImage = UIImage(named: "cartmanDiva.jpg") as UIImage?
        let cartmanDivaButton   = UIButton(type: UIButtonType.Custom) as UIButton
        cartmanDivaButton.setImage(cartmanDivaImage, forState: .Normal)
        view.addSubview(cartmanDivaButton)
        
        // Cartman ScrewYouGuys Button
        let screwYouGuysImage = UIImage(named: "screwYouGuys.jpg") as UIImage?
        let screwYouGuysButton   = UIButton(type: UIButtonType.Custom) as UIButton
        screwYouGuysButton.setImage(screwYouGuysImage, forState: .Normal)
        view.addSubview(screwYouGuysButton)
        
        // Cartman Respect Button
        let respectImage = UIImage(named: "respect.jpg") as UIImage?
        let respectButton   = UIButton(type: UIButtonType.Custom) as UIButton
        respectButton.setImage(respectImage, forState: .Normal)
        view.addSubview(respectButton)
        
        // Sad Panda Button
        let sadPandaImage = UIImage(named: "sadPanda.jpg") as UIImage?
        let sadPandaButton   = UIButton(type: UIButtonType.Custom) as UIButton
        sadPandaButton.setImage(sadPandaImage, forState: .Normal)
        view.addSubview(sadPandaButton)
        
        // Mmmkay Button
        let mmkayImage = UIImage(named: "mmmkay.jpg") as UIImage?
        let mmmkayButton   = UIButton(type: UIButtonType.Custom) as UIButton
        mmmkayButton.setImage(mmkayImage, forState: .Normal)
        view.addSubview(mmmkayButton)
        
        // Killed Kenny Button
        let kennyImage = UIImage(named: "kenny.jpg") as UIImage?
        let kennyButton   = UIButton(type: UIButtonType.Custom) as UIButton
        kennyButton.setImage(kennyImage, forState: .Normal)
        view.addSubview(kennyButton)
        
        // Kick The Baby Button
        let kickTheBabyImage = UIImage(named: "kickTheBaby.jpg") as UIImage?
        let kickTheBabyButton   = UIButton(type: UIButtonType.Custom) as UIButton
        kickTheBabyButton.setImage(kickTheBabyImage, forState: .Normal)
        view.addSubview(kickTheBabyButton)
        
        // Satan Button
        let satanImage = UIImage(named: "satan.jpg") as UIImage?
        let satanButton   = UIButton(type: UIButtonType.Custom) as UIButton
        satanButton.setImage(satanImage, forState: .Normal)
        view.addSubview(satanButton)
        
        // Jobs Button
        let jobsImage = UIImage(named: "jobs.jpg") as UIImage?
        let jobsButton   = UIButton(type: UIButtonType.Custom) as UIButton
        jobsButton.setImage(jobsImage, forState: .Normal)
        view.addSubview(jobsButton)
        
        // Gone Button
        let goneImage = UIImage(named: "gone.jpg") as UIImage?
        let goneButton   = UIButton(type: UIButtonType.Custom) as UIButton
        goneButton.setImage(goneImage, forState: .Normal)
        view.addSubview(goneButton)
        
        
    }

}
