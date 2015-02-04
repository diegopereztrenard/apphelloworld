//
//  ViewTwo.swift
//  helloWorld
//
//  Created by Diego Perez on 1/31/15.
//  Copyright (c) 2015 Diego Perez. All rights reserved.
//

import Foundation
import UIKit

class ViewTwo: UIViewController {

    @IBOutlet var NameField: UITextField!
    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController :ViewController = segue.destinationViewController as ViewController
        
        DestViewController.name = "Hello \(NameField.text)!!!"
    }
}