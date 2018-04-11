//
//  GameState.swift
//  rockPaperScissors
//
//  Created by kaye on 28/3/18.
//  Copyright © 2018 Alien.sh. All rights reserved.
//

import Foundation

//an enum with the four different states that the game can be in

enum GameState{
    case Start
    case Win
    case Lose
    case Draw
    
    var state: String{
        switch self{
        case .Start:
            return "Start"
        case .Lose:
            return "Lose"
        case .Win:
            return "Win"
        case .Draw:
            return "Draw"
        }
    }
    
}





