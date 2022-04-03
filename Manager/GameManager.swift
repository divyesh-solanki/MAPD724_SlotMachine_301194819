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
    public static var slot1Character = 0
    public static var slot2Character = 0
    public static var slot3Character = 0

    public static var betAmount = 1000
    public static var currentBetAmount = 10

    public static func spinSlots(){
        slot1Character = Int.random(in: 1...3)
        slot2Character = Int.random(in: 1...3)
        slot3Character = Int.random(in: 1...3)
        checkResults()
    }
    
    
    public static func getCharacter(index: Int) -> String{
        return charMap[index]
    }
    
    public static func checkResults(){
        betAmount = betAmount - currentBetAmount
    }
    
}

