//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by John Ly on 12/2/20.
//  Copyright © 2020 John Ly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var totalWins: Int = 0
    var totalLoss: Int = 0
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var againButton: UIButton!
    @IBOutlet weak var doneButton: UIButton!
    @IBAction func rockButtonPressed(_ sender: Any) {
        playGame(user: .rock)
        paperButton.isHidden = true
        scissorsButton.isHidden = true
    }
    @IBAction func paperButtonPressed(_ sender: Any) {
        playGame(user: .paper)
        rockButton.isHidden = true
        scissorsButton.isHidden = true
    }
    @IBAction func scissorsButtonPressed(_ sender: Any) {
        playGame(user: .scissors)
        rockButton.isHidden = true
        paperButton.isHidden = true
    }
    @IBAction func againButtonPressed(_ sender: Any) {
        rockButton.isHidden = false
        paperButton.isHidden = false
        scissorsButton.isHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.isHidden = true
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "resultSeg" else {return}
        if totalWins > totalLoss {
            segue.destination.navigationItem.title = "You Win!"
        }
        else {
            segue.destination.navigationItem.title = "You Lose."
        }
    }

    func playGame(user:RockPaperScissors) {
        var botchoice: RockPaperScissors
        // I am doing random int 1 - 9 because it gives it a 33% across the board.
        let number = Int.random(in: 1...9)
        switch number {
        case 1...3:
            botchoice = RockPaperScissors.rock
        case 4...6:
            botchoice = RockPaperScissors.paper
        case 7...9:
            botchoice = RockPaperScissors.scissors
        default:
            return
        }
        if user == botchoice {
            resultLabel.text = "Tie Game"
        }
            //Winning combinations
        else if user == .paper && botchoice == .rock {
            resultLabel.text = "You Win!"
            totalWins += 1
        }
        else if user == .rock && botchoice == .scissors {
            resultLabel.text = "You Win!"
            totalWins += 1
        }
        else if user == .scissors && botchoice == .paper {
            resultLabel.text = "You Win!"
            totalWins += 1
        }
            //losing combinations
        else if user == .rock && botchoice == .paper {
            resultLabel.text = "You Lose."
            totalLoss += 1
        }
        else if user == .scissors && botchoice == .rock {
            resultLabel.text = "You Lose."
            totalLoss += 1
        }
        else if user == .paper && botchoice == .scissors {
            resultLabel.text = "You Lose."
            totalLoss += 1
        }
        else {
        return
        }

        
        
        
    }
}

