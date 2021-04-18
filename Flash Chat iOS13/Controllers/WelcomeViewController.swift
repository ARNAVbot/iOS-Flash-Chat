//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
//import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
//    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // loops example
        let fruitBaskets = ["Apple", "Pear", "Orange"]
        for fruit in fruitBaskets {
//            print(fruit)
        }
        
        // The following code does the animation manually to titleLabel.
        // However, we can use the CLTypingLabel library for the same just below it.
        
        titleLabel.text = ""
        var charIndex = 0.0
        // printing the letters in an animated way
        let titleText = K.name
        for letter in titleText {
            print(letter)
            // Timer example
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex , repeats: false) {
                (timer) in
                    self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
        
//        titleLabel.text = "⚡️FlashChat"
        
        
    }
    

}
