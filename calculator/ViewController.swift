//
//  ViewController.swift
//  calculator
//
//  Created by David Griffiths on 28/06/2018.
//  Copyright © 2018 David Griffiths. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        roundButtons()
        display.text = "0"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var plusFunc: Bool = false
    var minusFunc: Bool = false
    var multFunc: Bool = false
    var divFunc: Bool = false
    var num1: Float = 0.0
    var num2: Float = 0.0
    var firstNumSet: Bool = false
    var startVal: Bool = true
    
    @IBOutlet weak var display: UITextField!
    
    @IBOutlet weak var plusButtonVar: UIButton!
    @IBOutlet weak var minusButtonVar: UIButton!
    @IBOutlet weak var multButtonVar: UIButton!
    @IBOutlet weak var divButtonVar: UIButton!
    
    @IBOutlet weak var acButtonVar: UIButton!
    @IBOutlet weak var pmButtonVar: UIButton!
    @IBOutlet weak var percentButtonVar: UIButton!
    @IBOutlet weak var equalsButtonVar: UIButton!
    @IBOutlet weak var pointButtonVar: UIButton!
    
    @IBOutlet weak var zeroButtonVar: UIButton!
    @IBOutlet weak var oneButtonVar: UIButton!
    @IBOutlet weak var twoButtonVar: UIButton!
    @IBOutlet weak var threeButtonVar: UIButton!
    @IBOutlet weak var fourButtonVar: UIButton!
    @IBOutlet weak var fiveButtonVar: UIButton!
    @IBOutlet weak var sixButtonVar: UIButton!
    @IBOutlet weak var sevenButtonVar: UIButton!
    @IBOutlet weak var eightButtonVar: UIButton!
    @IBOutlet weak var nineButtonVar: UIButton!
    
    func roundButtons(){
        plusButtonVar.layer.cornerRadius = 15
        plusButtonVar.clipsToBounds = true
        minusButtonVar.layer.cornerRadius = 15
        minusButtonVar.clipsToBounds = true
        multButtonVar.layer.cornerRadius = 15
        multButtonVar.clipsToBounds = true
        divButtonVar.layer.cornerRadius = 15
        divButtonVar.clipsToBounds = true
        acButtonVar.layer.cornerRadius = 15
        acButtonVar.clipsToBounds = true
        pmButtonVar.layer.cornerRadius = 15
        pmButtonVar.clipsToBounds = true
        percentButtonVar.layer.cornerRadius = 15
        percentButtonVar.clipsToBounds = true
        equalsButtonVar.layer.cornerRadius = 15
        equalsButtonVar.clipsToBounds = true
        pointButtonVar.layer.cornerRadius = 15
        pointButtonVar.clipsToBounds = true
        zeroButtonVar.layer.cornerRadius = 15
        zeroButtonVar.clipsToBounds = true
        oneButtonVar.layer.cornerRadius = 15
        oneButtonVar.clipsToBounds = true
        twoButtonVar.layer.cornerRadius = 15
        twoButtonVar.clipsToBounds = true
        threeButtonVar.layer.cornerRadius = 15
        threeButtonVar.clipsToBounds = true
        fourButtonVar.layer.cornerRadius = 15
        fourButtonVar.clipsToBounds = true
        fiveButtonVar.layer.cornerRadius = 15
        fiveButtonVar.clipsToBounds = true
        sixButtonVar.layer.cornerRadius = 15
        sixButtonVar.clipsToBounds = true
        sevenButtonVar.layer.cornerRadius = 15
        sevenButtonVar.clipsToBounds = true
        eightButtonVar.layer.cornerRadius = 15
        eightButtonVar.clipsToBounds = true
        nineButtonVar.layer.cornerRadius = 15
        nineButtonVar.clipsToBounds = true
    }
    
    func resetOperators(){
        plusButtonVar.backgroundColor = UIColor.white
        minusButtonVar.backgroundColor = UIColor.white
        multButtonVar.backgroundColor = UIColor.white
        divButtonVar.backgroundColor = UIColor.white
        
        plusButtonVar.setTitleColor(.black, for: .normal)
        minusButtonVar.setTitleColor(.black, for: .normal)
        multButtonVar.setTitleColor(.black, for: .normal)
        divButtonVar.setTitleColor(.black, for: .normal)
        
        plusFunc = false
        minusFunc = false
        multFunc = false
        divFunc = false
        
    }
    
    func toFloat(value: String) -> Float{
        return (value as NSString).floatValue
    }
    
    @IBAction func acButton(_ sender: Any) {
        resetOperators()
        display.text = "0"
        startVal = true
    }
    
    @IBAction func pmButton(_ sender: Any) {

        if toFloat(value: display.text!) < 0 {
            display.text = NSNumber(value: (toFloat(value: display.text!) * -1)).stringValue
        }
        
        if toFloat(value: display.text!) > 0 {
            display.text = "-" + display.text!
        }
    }
    
    @IBAction func percentButton(_ sender: Any) {
    }
    
    @IBAction func pointButton(_ sender: Any) {
        if display.text!.count > 0 {
            if display.text!.range(of:".") == nil {
                firstNumSet = false
                startVal = false
                display.text = display.text! + "."
            }
        }
    }
    
    @IBAction func divButton(_ sender: Any) {
        resetOperators()
        divButtonVar.backgroundColor = UIColor.black
        divButtonVar.setTitleColor(.white, for: .normal)
        divFunc = true

        num1 = toFloat(value: display.text!)
        firstNumSet = true
        
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        resetOperators()
        multButtonVar.backgroundColor = UIColor.black
        multButtonVar.setTitleColor(.white, for: .normal)
        multFunc = true
        
        num1 = toFloat(value: display.text!)
        firstNumSet = true
    }
    
    @IBAction func minusButton(_ sender: Any) {
        resetOperators()
        minusButtonVar.backgroundColor = UIColor.black
        minusButtonVar.setTitleColor(.white, for: .normal)
        minusFunc = true
        
        num1 = toFloat(value: display.text!)
        firstNumSet = true
    }
    
    @IBAction func plusButton(_ sender: Any) {
        resetOperators()
        plusButtonVar.backgroundColor = UIColor.black
        plusButtonVar.setTitleColor(.white, for: .normal)
        plusFunc = true
        
        num1 = toFloat(value: display.text!)
        firstNumSet = true
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        print(display.text!)
        
        if display.text! != "0" {
            print("here")
            if firstNumSet == true{
                firstNumSet = false
                display.text = "0"
                print(display.text!)
            } else {
                display.text = display.text! + "0"
            }
        }
    }
    
    @IBAction func oneButton(_ sender: Any) {
        if startVal == true {
            startVal = false
            display.text = ""
        }
        if firstNumSet == true {
            firstNumSet = false
            display.text = "1"
        } else {
            display.text = display.text! + "1"
        }
    }
    
    @IBAction func twoButton(_ sender: Any) {
        if startVal == true{
            startVal = false
            display.text = ""
        }
        if firstNumSet == true{
            firstNumSet = false
            display.text = "2"
        } else {
            display.text = display.text! + "2"
        }
    }
    
    @IBAction func threeButton(_ sender: Any) {
        if startVal == true{
            startVal = false
            display.text = ""
        }
        if firstNumSet == true{
            firstNumSet = false
            display.text = "3"
        } else {
            display.text = display.text! + "3"
        }
    }
    
    @IBAction func fourButton(_ sender: Any) {
        if startVal == true{
            startVal = false
            display.text = ""
        }
        if firstNumSet == true{
            firstNumSet = false
            display.text = "4"
        } else {
            display.text = display.text! + "4"
        }
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        if startVal == true{
            startVal = false
            display.text = ""
        }
        if firstNumSet == true{
            firstNumSet = false
            display.text = "5"
        } else {
            display.text = display.text! + "5"
        }
    }
    
    @IBAction func sixButton(_ sender: Any) {
        if startVal == true{
            startVal = false
            display.text = ""
        }
        if firstNumSet == true{
            firstNumSet = false
            display.text = "6"
        } else {
            display.text = display.text! + "6"
        }
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        if startVal == true{
            startVal = false
            display.text = ""
        }
        if firstNumSet == true{
            firstNumSet = false
            display.text = "7"
        } else {
            display.text = "7"
        }
    }
    
    @IBAction func eightButton(_ sender: Any) {
        if startVal == true{
            startVal = false
            display.text = ""
        }
        if firstNumSet == true{
            firstNumSet = false
            display.text = "8"
        } else {
            display.text = display.text! + "8"
        }
    }
    
    @IBAction func nineButton(_ sender: Any) {
        if startVal == true{
            startVal = false
            display.text = ""
        }
        if firstNumSet == true{
            firstNumSet = false
            display.text = "9"
        } else {
            display.text = display.text! + "9"
        }
    }
    
    @IBAction func equalsButton(_ sender: Any) {
        
        if plusFunc == true{
            display.text = NSNumber(value: (num1 + toFloat(value: display.text!))).stringValue
            num1 = toFloat(value: display.text!)
        }
        if minusFunc == true{
            display.text = NSNumber(value: (num1 - toFloat(value: display.text!))).stringValue
            num1 = toFloat(value: display.text!)
        }
        if multFunc == true{
            display.text = NSNumber(value: (num1 * toFloat(value: display.text!))).stringValue
            num1 = toFloat(value: display.text!)
        }
        if divFunc == true{
            display.text = NSNumber(value: (num1 / toFloat(value: display.text!))).stringValue
            num1 = toFloat(value: display.text!)
        }
        
        resetOperators()
        
    }
    
}

