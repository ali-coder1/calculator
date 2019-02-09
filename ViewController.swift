//
//  ViewController.swift
//  calculator
//
//  Created by Ali Alshahrani on 12/14/18.
//  Copyright © 2018 Ali Alshahrani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    var newOperation = true
    // This func take task to dispaly the number after clicked!
    func addNumberToDisplay (num: String) {
        
        var numberAdded = String(display.text!)
        
        if newOperation {
            numberAdded = ""
            
            newOperation = false
        }
        
        numberAdded = numberAdded + num
        
        display.text = numberAdded
    }
    
    @IBAction func button0(_ sender: Any) {
        addNumberToDisplay(num: "0")
    }
    
    
    @IBAction func button1(_ sender: Any) {
        addNumberToDisplay(num: "1")
    }
    
    @IBAction func button2(_ sender: Any) {
        addNumberToDisplay(num: "2")
    }
    
    @IBAction func button3(_ sender: Any) {
        addNumberToDisplay(num: "3")
    }
    
    @IBAction func button4(_ sender: Any) {
        addNumberToDisplay(num: "4")
    }
    
    @IBAction func button5(_ sender: Any) {
        addNumberToDisplay(num: "5")
    }
    
    @IBAction func button6(_ sender: Any) {
        addNumberToDisplay(num: "6")
    }
    
    @IBAction func button7(_ sender: Any) {
        addNumberToDisplay(num: "7")
    }
    
    @IBAction func button8(_ sender: Any) {
        addNumberToDisplay(num: "8")
    }
    
    @IBAction func button9(_ sender: Any) {
        addNumberToDisplay(num: "9")
    }
    
    @IBAction func buttonDot(_ sender: Any) {
        addNumberToDisplay(num: ".")
    }
    
    @IBAction func clearDisplay(_ sender: Any) {
        
        var clearing = String(display.text!)
        
        clearing = "0"
        
        display.text = clearing
        newOperation = true
    }
    
    var op = ""
    var number1:Double?
    @IBAction func buttonDivide(_ sender: Any) {
        
        op = "÷"
        number1 = Double(display.text!)
        newOperation = true
    }
    
    
    @IBAction func buttonMultiple(_ sender: Any) {
        
        op = "×"
        number1 = Double(display.text!)
        newOperation = true
    }
    
    
    @IBAction func buttonMinus(_ sender: Any) {
        
        op = "−"
        number1 = Double(display.text!)
        newOperation = true
    }
    
    @IBAction func buttonPlus(_ sender: Any) {
        
        op = "+"
        number1 = Double(display.text!)
        newOperation = true
    }
    
    
    @IBAction func buttonModulo(_ sender: Any) {
        
        op = "%"
        number1 = Double(display.text!)
        
        number1 = number1! / 100.0
        display.text! = String(number1!)
        newOperation = true
    }
    
    
    @IBAction func buttonPM(_ sender: Any) {
        
        op = "+/-"
        var m = display.text!
        
        m = String("-\(m)")
        
        display.text! = m
        newOperation = true
    }
    
    
    @IBAction func buttonEqual(_ sender: Any) {
        
        let number2 = Double(display.text!)
        
        var result:Double?
        
        if op == "÷" {
            result = number1! / number2!
        } else if op == "×" {
            result = number1! * number2!
            
        } else if op == "−" {
            result = number1! - number2!
        
        } else if op == "+" {
            result = number1! + number2!
        
        } else {
            result = 0.0
        }
        
        display.text! = String(result!)
        newOperation = true
    }

}

