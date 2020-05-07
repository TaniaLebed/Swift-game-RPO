//
//  CardModel.swift
//  Game
//
//  Created by TaniaLebed on 5/4/20.
//  Copyright © 2020 TaniaLebed. All rights reserved.
//

import Foundation

class CardModel {
    
    func getCards() -> [Card] {
        var generatedNumbersArray = [Int]()
        
        var generatedCardsArray = [Card]()
        
        while generatedNumbersArray.count < 5 {
            let randomNumber = arc4random_uniform(13) + 1
            
            if generatedNumbersArray.contains(Int(randomNumber)) == false {
                generatedNumbersArray.append(Int(randomNumber))
                
                let cardOne = Card()
                cardOne.imageName = "card\(randomNumber)"
                generatedCardsArray.append(cardOne)
                
                let cardTwo = Card()
                cardTwo.imageName = "card\(randomNumber)"
                generatedCardsArray.append(cardTwo)
            }
        }
        for i in 0...generatedCardsArray.count-1 {
            let randomNumber = Int(arc4random_uniform(UInt32(generatedCardsArray.count)))
            let temporaryStorage = generatedCardsArray[i]
            generatedCardsArray[i] = generatedCardsArray[randomNumber]
            generatedCardsArray[randomNumber] = temporaryStorage
        }
        
        return generatedCardsArray
    }
}
