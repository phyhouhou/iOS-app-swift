//
//  ViewController.swift
//  TylenolDosageCalculator
//
//  Created by Yanhua Hou on 1/30/17.
//  Copyright © 2017 Alice007. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myInput: UITextField!
    
    @IBOutlet weak var myOutput: UITextField!
    
    @IBOutlet weak var myNotice: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myNotice.isHidden=true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func myButton(_ sender: Any) {
        myNotice.isHidden=false
        let inputValue = Double(myInput.text!)
        if (myInput.text!.isEmpty){
             myOutput.text="Hey! Enter a number"
        }else if(inputValue!<=0) {
             myOutput.text="Hey! Enter a positive number"
        }else if(inputValue!<6&&inputValue!>0){
            myOutput.text = "Read Notice!"
        }else if(inputValue!>=6&&inputValue!<9){
            myOutput.text = "\(Double(1.25))"

        }else if(inputValue!>=9&&inputValue!<12){
            myOutput.text = "\(Double(1.875))"
            
        }else if(inputValue!>=12&&inputValue!<18){
            myOutput.text = "\(Double(2.5))"
            
        }else if(inputValue!>=18&&inputValue!<24){
            myOutput.text = "\(Double(3.75))"
            
        }else if(inputValue!>=24&&inputValue!<36){
            myOutput.text = "\(Double(5))"
            
        }else if(inputValue!>=36&&inputValue!<48){
            myOutput.text = "\(Double(7.5))"
            
        }else if(inputValue!>=48&&inputValue!<60){
            myOutput.text = "\(Double(10))"
            
        }else if(inputValue!>=60&&inputValue!<72){
            myOutput.text = "\(Double(12.5))"
            
        }else if(inputValue!>=72&&inputValue!<96){
            myOutput.text = "\(Double(15))"
            
        }else if(inputValue!>=96){
            myOutput.text = "\(Double(20))"
            
        }
       
        
        
    }
    //myOutput.text = "\(Double(inputValue!+1))"
// (https://s-media-cache-ak0.pinimg.com/originals/f7/fb/08/f7fb084596ad9f5dfd07e8498d1186ce.jpg)
}

