//
//  ViewController.swift
//  Multiples
//
//  Created by Mike Pitre on 10/15/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets
    
    @IBOutlet weak var mathLabel: UILabel!
    @IBOutlet weak var multipleTxtField: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var titleLabel: UIImageView!
    
    //variables
    
    var currentTotal = 0
    var multiple = 0
    var timesAddPressed = 0
    
    //actions

    @IBAction func playBtnPressed(sender: UIButton) {
        //if input was given set multiple, else do nothing
        if multipleTxtField.text != "" && multipleTxtField.text != nil {
            multiple = Int(multipleTxtField.text!)!
            // hide welcome page elements, show math page elements
            titleLabel.hidden = true
            multipleTxtField.hidden = true
            playBtn.hidden = true
            mathLabel.hidden = false
            addBtn.hidden = false
        } 
    }
    
    @IBAction func addBtnPressed(sender: UIButton) {
        //show math, update to next multiple with every press
        mathLabel.text = "\(currentTotal) + \(multiple) = \(currentTotal + multiple)"
        currentTotal += multiple
        timesAddPressed++
        restartOn11thMultiple()
    }
    
    func restartOn11thMultiple() {
        //reset everything once current total is 100 or greater
        if timesAddPressed > 10 {
            titleLabel.hidden = false
            multipleTxtField.hidden = false
            playBtn.hidden = false
            mathLabel.hidden = true
            addBtn.hidden = true
            currentTotal = 0
            multiple = 0
            multipleTxtField.text = ""
        }
    }
    

}

