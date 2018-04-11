//
//  Sign.swift
//  rockPaperScissors
//
//  Created by kaye on 28/3/18.
//  Copyright © 2018 Alien.sh. All rights reserved.
//

import Foundation
import GameplayKit //framework contains an API to generate random numbers

//To generate a random Sign to act as the app’s turn

var randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

var computerSign = randomSign()

//generate a random Int between ​the two values specified in randomChoice

var sign = randomChoice.nextInt()

//function to get a random number, then uses it to create a new Sign instance

func randomSign() -> Sign {
    
    if sign == 0
    {
        return .rock
    }
    else if sign == 1
    {
        return .paper
    }
    else
    {
        return .scissors
    }
}


//An enum to represent each sign.

enum Sign {
    case rock
    case paper
    case scissors
    
    var sign: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "🤚"
        case .scissors:
            return "✌️"
        }
    }
    
    
}


func play(_ opponentSign: Sign) -> GameState {
    
    randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)
    
     computerSign = randomSign()
    
     sign = randomChoice.nextInt()

    //To compare two Sign instances to give a GameState
    
    if computerSign == .rock
    {
        switch opponentSign {
        case .rock:
            return .Draw
            
        case .paper:
            return .Win
            
        case .scissors:
            return .Lose
        }
    }
        
    else if computerSign == .paper
    {
        switch opponentSign {
        case .rock:
            return .Lose
            
        case .paper:
            return .Draw
            
        case .scissors:
            return .Win
        }
    }
        
    else if computerSign == .scissors
    {
        switch opponentSign {
        case .rock:
            return .Win
            
        case .paper:
            return .Lose
            
        case .scissors:
            return .Draw
        }
    }
    return .Start
}




