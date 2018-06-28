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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var displayString: String = ""
    var plusFunc: Bool = false
    var minusFunc: Bool = false
    var multFunc: Bool = false
    var divFunc: Bool = false
    var num1: Float = 0.0
    var num2: Float = 0.0
    
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
        plusButtonVar.layer.cornerRadius = 20
        plusButtonVar.clipsToBounds = true
        minusButtonVar.layer.cornerRadius = 20
        minusButtonVar.clipsToBounds = true
        multButtonVar.layer.cornerRadius = 20
        multButtonVar.clipsToBounds = true
        divButtonVar.layer.cornerRadius = 20
        divButtonVar.clipsToBounds = true
        acButtonVar.layer.cornerRadius = 20
        acButtonVar.clipsToBounds = true
        pmButtonVar.layer.cornerRadius = 20
        pmButtonVar.clipsToBounds = true
        percentButtonVar.layer.cornerRadius = 20
        percentButtonVar.clipsToBounds = true
        equalsButtonVar.layer.cornerRadius = 20
        equalsButtonVar.clipsToBounds = true
        pointButtonVar.layer.cornerRadius = 20
        pointButtonVar.clipsToBounds = true
        zeroButtonVar.layer.cornerRadius = 20
        zeroButtonVar.clipsToBounds = true
        oneButtonVar.layer.cornerRadius = 20
        oneButtonVar.clipsToBounds = true
        twoButtonVar.layer.cornerRadius = 20
        twoButtonVar.clipsToBounds = true
        threeButtonVar.layer.cornerRadius = 20
        threeButtonVar.clipsToBounds = true
        fourButtonVar.layer.cornerRadius = 20
        fourButtonVar.clipsToBounds = true
        fiveButtonVar.layer.cornerRadius = 20
        fiveButtonVar.clipsToBounds = true
        sixButtonVar.layer.cornerRadius = 20
        sixButtonVar.clipsToBounds = true
        sevenButtonVar.layer.cornerRadius = 20
        sevenButtonVar.clipsToBounds = true
        eightButtonVar.layer.cornerRadius = 20
        eightButtonVar.clipsToBounds = true
        nineButtonVar.layer.cornerRadius = 20
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
        displayString = ""
        display.text = displayString
    }
    
    @IBAction func pmButton(_ sender: Any) {
        
        if toFloat(value: display.text!) < 0 {
        
            num1 = toFloat(value: display.text!) * -1
            display.text = String(num1)
        }
        
        if toFloat(value: display.text!) > 0{
         
            display.text = "-" + display.text!
            num1 = toFloat(value: display.text!)
        }
        
    }
    
    @IBAction func percentButton(_ sender: Any) {
    }

    @IBAction func divButton(_ sender: Any) {
        resetOperators()
        divButtonVar.backgroundColor = UIColor.black
        divButtonVar.setTitleColor(.white, for: .normal)
        divFunc = true

        num1 = toFloat(value: display.text!)
        displayString = ""
        //display.text = displayString
        
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        resetOperators()
        multButtonVar.backgroundColor = UIColor.black
        multButtonVar.setTitleColor(.white, for: .normal)
        multFunc = true
        
        num1 = toFloat(value: display.text!)
        displayString = ""
        //display.text = displayString
    }
    
    @IBAction func minusButton(_ sender: Any) {
        resetOperators()
        minusButtonVar.backgroundColor = UIColor.black
        minusButtonVar.setTitleColor(.white, for: .normal)
        minusFunc = true
        
        num1 = toFloat(value: display.text!)
        displayString = ""
        //display.text = displayString
    }
    
    @IBAction func plusButton(_ sender: Any) {
        resetOperators()
        plusButtonVar.backgroundColor = UIColor.black
        plusButtonVar.setTitleColor(.white, for: .normal)
        plusFunc = true
        
        num1 = toFloat(value: display.text!)
        displayString = ""
        //display.text = displayString
        
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        if displayString.count > 0{
            displayString = displayString + "0"
            display.text = displayString
        }
    }
    
    @IBAction func oneButton(_ sender: Any) {
        displayString = displayString + "1"
        display.text = displayString
    }
    
    @IBAction func twoButton(_ sender: Any) {
        displayString = displayString + "2"
        display.text = displayString
    }
    
    @IBAction func threeButton(_ sender: Any) {
        displayString = displayString + "3"
        display.text = displayString
    }
    
    @IBAction func fourButton(_ sender: Any) {
        displayString = displayString + "4"
        display.text = displayString
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        displayString = displayString + "5"
        display.text = displayString
    }
    
    @IBAction func sixButton(_ sender: Any) {
        displayString = displayString + "6"
        display.text = displayString
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        displayString = displayString + "7"
        display.text = displayString
    }
    
    @IBAction func eightButton(_ sender: Any) {
        displayString = displayString + "8"
        display.text = displayString
    }
    
    @IBAction func nineButton(_ sender: Any) {
        displayString = displayString + "9"
        display.text = displayString
    }
    
    @IBAction func pointButton(_ sender: Any) {
        if displayString.count > 0{
        displayString = displayString + "."
        display.text = displayString
        }
    }
    
    @IBAction func equalsButton(_ sender: Any) {
        
        if plusFunc == true{
            display.text = String(num1 + toFloat(value: displayString))
            num1 = toFloat(value: display.text!)
            displayString = ""
        }
        if minusFunc == true{
            display.text = String(num1 - toFloat(value: displayString))
            num1 = toFloat(value: display.text!)
            displayString = ""
        }
        if multFunc == true{
            display.text = String(num1 * toFloat(value: displayString))
            num1 = toFloat(value: display.text!)
            displayString = ""
        }
        if divFunc == true{
            display.text = String(num1 / toFloat(value: displayString))
            num1 = toFloat(value: display.text!)
            displayString = ""
        }
        
        resetOperators()
        
    }
    
}

