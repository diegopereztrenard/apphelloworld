//
//  ViewController.swift
//  helloWorld
//
//  Created by Diego Perez on 1/30/15.
//  Copyright (c) 2015 Diego Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!           //diciendo hola
//    @IBOutlet var textField: UITextField!
    
    var name = String()
    
    
    @IBOutlet var Firstnumer: UITextField!      //obtengo data
    @IBOutlet var Secondnumber: UITextField!
    
    
    @IBOutlet var outputOutlet: UILabel!        //resultado
    
    
    var currentCount = 0
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = name
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    @IBAction func ButtonClicked(sender: UIButton) {
        
        nameLabel.text = "Hello \(textField.text)"
        textField.text = ""
        
    }
*/

    @IBAction func SuButtom(sender: UIButton) {
        
        currentCount = Firstnumer.text.toInt()! + Secondnumber.text.toInt()!
        outputOutlet.text = "The number is \(currentCount)"
        outputOutlet.textColor = UIColor.redColor()
        Firstnumer.text = ""
        Secondnumber.text = ""
    }
  
    
    @IBAction func SubtractionButton(sender: UIButton) {

        currentCount = Firstnumer.text.toInt()! - Secondnumber.text.toInt()!
        outputOutlet.text = "The number is \(currentCount)"
        outputOutlet.textColor = UIColor.redColor()
        Firstnumer.text = ""
        Secondnumber.text = ""
    }
    
    @IBAction func DivisionButton(sender: UIButton) {
        if(Secondnumber.text.toInt()! == 0){
            outputOutlet.text = "You can't divide by zero!!!"
        }
        
        else{
            currentCount = Firstnumer.text.toInt()! / Secondnumber.text.toInt()!
            outputOutlet.text = "The number is \(currentCount)"
            outputOutlet.textColor = UIColor.redColor()
        }
        
        if(Secondnumber.text.toInt()! > Firstnumer.text.toInt()!){
        outputOutlet.text = "Sorry, this app doesn't work with decimals"
        }
        
        Firstnumer.text = ""
        Secondnumber.text = ""
    }
    
    @IBAction func MultiplicationButton(sender: UIButton) {
        
        currentCount = Firstnumer.text.toInt()! * Secondnumber.text.toInt()!
        outputOutlet.text = "The number is \(currentCount)"
        outputOutlet.textColor = UIColor.redColor()
        Firstnumer.text = ""
        Secondnumber.text = ""
    }
    
}

