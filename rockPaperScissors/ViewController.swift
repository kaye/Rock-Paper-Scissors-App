//
//  ViewController.swift
//  rockPaperScissors
//
//  Created by kaye on 28/3/18.
//  Copyright © 2018 Alien.sh. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {

    @IBOutlet weak var AppSign: UILabel!
    
    @IBOutlet weak var alienSign: UILabel!
    
    @IBOutlet weak var gameStatus: UILabel!
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var rockButton: UIButton!
    
    @IBOutlet weak var paperButton: UIButton!
    
    @IBOutlet weak var scissorsButton: UIButton!
    
    @IBAction func rockButton(_ sender: Any) {
        let opponentSign = Sign.rock
        let gs = play(opponentSign)
        gameStateChanged(gs)
        rockButton.isHidden = false
        paperButton.isHidden = true
        scissorsButton.isHidden = true
        
    }
    
    @IBAction func paperButton(_ sender: Any) {
        let opponentSign = Sign.paper
        let gs = play(opponentSign)
        gameStateChanged(gs)
        rockButton.isHidden = true
        paperButton.isHidden = false
        scissorsButton.isHidden = true
    }
    
    @IBAction func scissorsButton(_ sender: Any) {
        let opponentSign = Sign.scissors
        let gs = play(opponentSign)
        gameStateChanged(gs)
        rockButton.isHidden = true
        paperButton.isHidden = true
        scissorsButton.isHidden = false
    }
    
    @IBAction func playButton(_ sender: Any) {
         super.viewDidLoad()
        gameStateChanged(GameState.Start)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        gameStateChanged(GameState.Start)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //update the UI based on a GameState parameter
    
    func gameStateChanged(_ gamestate: GameState)
    {
        if gamestate == .Start
        {
            //Set a different background color depending on the ​game's state
            self.view.backgroundColor
                = UIColor.white
            //Reset the computer sign label to the default logo
            alienSign.text = "👽"
            gameStatus.text = "Rock, Paper, Scissors"
            //Hide the Play Again button
            playButton.isHidden = true
            
            //“Show all of the player sign buttons.
            rockButton.isHidden = false
            paperButton.isHidden = false
            scissorsButton.isHidden = false
        }
            
        else if gamestate == .Lose
        {
            //Set a different background color depending on the ​game's state
            self.view.backgroundColor
                = UIColor.darkGray
            playButton.isHidden = false
            alienSign.text = "\(computerSign.sign)"
            //Set the status label’s text property to an appropriate game status
            gameStatus.text = "\(gamestate)"
            playButton.isHidden = false

        }
            
        else if gamestate == .Win
        {
            //Set a different background color depending on the ​game's state
            self.view.backgroundColor
                = UIColor.green
            playButton.isHidden = false
            alienSign.text = "\(computerSign.sign)"
            //Set the status label’s text property to an appropriate game status
            gameStatus.text = "\(gamestate)"
            playButton.isHidden = false

        }
            
        else if gamestate == .Draw
        {
            //Set a different background color depending on the ​game's state
            self.view.backgroundColor
                = UIColor.blue
            playButton.isHidden = false
            alienSign.text = "\(computerSign.sign)"
            //Set the status label’s text property to an appropriate game status
            gameStatus.text = "\(gamestate)"
            playButton.isHidden = false

        }
          
    }
}



