//
//  ViewController.swift
//  WorstCalc
//
//  Created by Niosh User on 10/17/19.
//  Copyright © 2019 Niosh User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func validateNumbers() -> (Bool, Int, Int) {
        if firstNumber.text != "" && secondNumber.text != "" {
            if let firstNum = Int(firstNumber.text!), let secondNum = Int(secondNumber.text!) {
                return (true, firstNum, secondNum)
            } else {
                return (false, 0, 0)
            }
        } else {
            return (false, 0, 0)
        }
    }

    @IBAction func addNumbers(_ sender: Any) {
        let validatedInput = validateNumbers()
        if validatedInput.0 {
            let resultString = String(validatedInput.1 + validatedInput.2)
            result.text = resultString
        } else {
            result.text = "Error"
        }
    }
    
    @IBAction func subtractNumbers(_ sender: Any) {
        let validatedInput = validateNumbers()
        if validatedInput.0 {
            let resultString = String(validatedInput.1 - validatedInput.2)
            result.text = resultString
        } else {
            result.text = "Error"
        }    }
    
    @IBAction func multiplyNumbers(_ sender: Any) {
        let validatedInput = validateNumbers()
        if validatedInput.0 {
            let resultString = String(validatedInput.1 * validatedInput.2)
            result.text = resultString
        } else {
            result.text = "Error"
        }
    }
    
    @IBAction func divideNumbers(_ sender: Any) {
        let validatedInput = validateNumbers()
        if validatedInput.0 && validatedInput.2 != 0 {
            let resultString = String(validatedInput.1 / validatedInput.2)
            result.text = resultString
        } else {
            result.text = "Error"
        }
    }
    
}

