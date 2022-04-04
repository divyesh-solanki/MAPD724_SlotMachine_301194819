//
//  GameManager.swift
//  MAPD724_SlotMachine_301194819
//
//  Name: Divyesh Solanki
// Student id: 301194819
//

import GameplayKit
import SpriteKit

class GameManager{
    
    public static var charMap = ["UnknownCharacter", "goku", "vegeta", "boo"]
    public static var slot1CharacterImage = 0
    public static var slot2CharacterImage = 0
    public static var slot3CharacterImage = 0

    public static var betAmount = 1000
    public static var currentBetAmount = 10
    public static var isValidBet = false

    public static func spinSlots(){
        slot1CharacterImage = Int.random(in: 1...3)
        slot2CharacterImage = Int.random(in: 1...3)
        slot3CharacterImage = Int.random(in: 1...3)
        checkResults()
    }
    
    
    public static func getCharacter(index: Int) -> String{
        return charMap[index]
    }
    
    public static func checkResults(){
        betAmount = betAmount - currentBetAmount
    }
    
}

