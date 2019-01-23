//
//  ViewController.swift
//  Dicee
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit


var diceArray : Array = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
var firstRandomIndex : Int = 0
var secondRandomIndex : Int = 0


class ViewController: UIViewController {

    @IBOutlet weak var firstDiceImageView: UIImageView!
    
    @IBOutlet weak var secondDiceImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

      print("some")
    }

    
    
    @IBAction func rollPressed(_ sender: AnyObject) {
        
        updateDiceImages()
    }
    
    func updateDiceImages() {
        
        firstRandomIndex = Int(arc4random_uniform(6))
        secondRandomIndex = Int(arc4random_uniform(6))
        
        firstDiceImageView.image = UIImage(named: diceArray[firstRandomIndex])
        secondDiceImageView.image = UIImage(named: diceArray[secondRandomIndex])
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            updateDiceImages()
        }
    }
    


}

