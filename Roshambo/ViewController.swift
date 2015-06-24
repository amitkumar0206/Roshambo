//
//  ViewController.swift
//  Roshambo
//
//  Created by Amit Kumar on 2015-06-23.
//  Copyright (c) 2015 Agranee Solutions Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func generateOpponentPlay() -> RPSEnum! {
        let randomNumber : Int = Int(1 + arc4random() % 3)
        if let opponentPlay = RPSEnum(rawValue: randomNumber) {
            switch opponentPlay {
            case RPSEnum.ROCK :
                    return RPSEnum.ROCK
            case RPSEnum.PAPER :
                return RPSEnum.PAPER
            case  RPSEnum.SCISSORS:
                return RPSEnum.SCISSORS
            }
        }
        return nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func rockClicked(sender: UIButton) {
        var controller: ResultController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultController") as! ResultController
        
        controller.playerChoice = RPSEnum.ROCK
        controller.opponentChoice = generateOpponentPlay()
        presentViewController(controller, animated: true, completion: nil)
    }

}

