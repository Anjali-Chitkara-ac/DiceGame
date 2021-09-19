//
//  ViewController.swift
//  DiceGame
//
//  Created by Anjali Chitkara on 9/15/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var imgOne: UIImageView!
    
    @IBOutlet weak var imgTwo: UIImageView!
    
    @IBOutlet weak var lblScore: UILabel!
    
    var score = 0
    
    @IBAction func below7pressed(_ sender: Any) {
        let one = Int.random(in: 1...6)
        let two = Int.random(in: 1...6)
        
        let imgOneName = "Dice\(one)"
        let imgTwoName = "Dice\(two)"
        
        imgOne.image = UIImage(named: imgOneName)
        imgTwo.image = UIImage(named: imgTwoName)
        
        if one + two < 7 {
            score+=1
        }
        
        lblScore.text = "Score = \(score)"
        
    }
    
    @IBAction func lucly7pressed(_ sender: Any) {
        let one = Int.random(in: 1...6)
        let two = Int.random(in: 1...6)
        
        let imgOneName = "Dice\(one)"
        let imgTwoName = "Dice\(two)"
        
        imgOne.image = UIImage(named: imgOneName)
        imgTwo.image = UIImage(named: imgTwoName)
        
        if one + two == 7 {
            score+=7
        }
        
        lblScore.text = "Score = \(score)"
    }
    
    @IBAction func above7pressed(_ sender: Any) {
        let one = Int.random(in: 1...6)
        let two = Int.random(in: 1...6)
        
        let imgOneName = "Dice\(one)"
        let imgTwoName = "Dice\(two)"
        
        imgOne.image = UIImage(named: imgOneName)
        imgTwo.image = UIImage(named: imgTwoName)
        
        if one + two > 7 {
            score+=1
        }
        
        lblScore.text = "Score = \(score)"
    }
    
}

