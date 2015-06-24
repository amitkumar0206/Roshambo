//
//  ResultController.swift
//  Roshambo
//
//  Created by Amit Kumar on 2015-06-23.
//  Copyright (c) 2015 Agranee Solutions Ltd. All rights reserved.
//

import UIKit


class ResultController: UIViewController {
    
    var playerChoice : RPSEnum!
    var opponentChoice:RPSEnum!
    
    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOutlet.text = ""
        imageView.image = nil
        
        showResult()
    }
    
    func showResult() {
        var message : String!
        var imageString : String!
        
        if (playerChoice == opponentChoice) {
            message = "Its a TIE. Try Again!!"
            imageString = "ItsATie"
        } else if (playerChoice == RPSEnum.PAPER &&  opponentChoice == RPSEnum.ROCK) {
            message = "You WIN! \nPaper Covers the Rock!!"
            imageString = "PaperCoversRock"
        } else if (playerChoice == RPSEnum.ROCK &&  opponentChoice == RPSEnum.PAPER) {
            message = "You LOSE! \nPaper Covers the Rock!!"
            imageString = "PaperCoversRock"
        } else if (playerChoice == RPSEnum.SCISSORS &&  opponentChoice == RPSEnum.PAPER) {
            message = "You WIN! \nScissors Cuts the Paper!!"
            imageString = "ScissorsCutPaper"
        } else if (playerChoice == RPSEnum.PAPER &&  opponentChoice == RPSEnum.SCISSORS) {
            message = "You LOSE! \nScissors Cuts the Paper!!"
            imageString = "ScissorsCutPaper"
        }else if (playerChoice == RPSEnum.ROCK &&  opponentChoice == RPSEnum.SCISSORS) {
            message = "You WIN! \nRock Crushes the Scissors!!"
            imageString = "RockCrushesScissors"
        } else if (playerChoice == RPSEnum.SCISSORS &&  opponentChoice == RPSEnum.ROCK) {
            message = "You LOSE! \nRock Crushes the Scissors!!"
            imageString = "RockCrushesScissors"
        }
        
        labelOutlet.text = message
        labelOutlet.textAlignment = .Center;
        imageView.image = UIImage(named: imageString)
    }
    
    
    @IBAction func playAgain(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}