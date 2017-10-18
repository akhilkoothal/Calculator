//
//  ViewController.swift
//  Calculator
//
//  Created by Akhil on 10/17/17.
//  Copyright © 2017 Akhil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelDisplay: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func ButtonPressed(_ sender: UIButton)
    {
        let digit = sender.currentTitle!
        if(userIsInTheMiddleOfTyping)
        {
            let textCurrentlyDisplay = labelDisplay.text!
            labelDisplay.text = textCurrentlyDisplay + digit
        }
        else
        {
            labelDisplay.text = digit
            userIsInTheMiddleOfTyping = true
        }
    }
    
    var displayValue: Double{
        get
        {
            return Double(labelDisplay.text!)!
        }
        set
        {
             labelDisplay.text = String(newValue)
        }
    }

    @IBAction func Operations(_ sender: UIButton)
    {
        userIsInTheMiddleOfTyping = false
        let MathematicOpeartionsTitle = sender.currentTitle!
            switch MathematicOpeartionsTitle
            {
                case "π":
                    displayValue = Double.pi
                    break;
                
                case "√":
                    displayValue = sqrt(displayValue)
                    break;
                
                case "+":
                
                
                    
                    break;
                
                default:    labelDisplay.text = "Noting to dispaly dude!!!!"
                break;
            }
    }
}

