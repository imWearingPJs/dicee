//
//  ViewController.swift
//  Dicee
//
//  Created by Michael Kozub on 2/6/19.
//  Copyright © 2019 Michael Kozub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    // renamed these for the purposes of learning how to rename IBOutlet names
    @IBOutlet weak var kozubDiceView1: UIImageView!
    @IBOutlet weak var kozubDiceView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDiceIndex1 = getRandomNumber()
        randomDiceIndex2 = getRandomNumber()
        
        kozubDiceView1.image = UIImage(named: diceArray[randomDiceIndex1])
        kozubDiceView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    func getRandomNumber() -> IntegerLiteralType {
        let randomNumber = Int.random(in: 0 ... 5)
        return randomNumber
    }
    
}

