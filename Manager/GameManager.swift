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
    
    public static var charMap = ["UnknownCharacter", "goku", "vegeta", "boo","krilin"]
    static var betLine: [Int] = [0,0,0];
    static var charCounts: [Int] = [0,0,0,0,0];
//    public static var slot1CharacterImage = 0
//    public static var slot2CharacterImage = 0
//    public static var slot3CharacterImage = 0

    public static var betAmount = 1000
    public static var currentBetAmount = 0
    public static var isValidBet = false
    
    

    public static func spinSlots(){
        betAmount = betAmount - currentBetAmount
        
        spinOutcomes()
        checkResults()
    }
    
    static var jackpot1 = 0
    static var jackpot2 = 0
    static var jackpot3 = 0
    public static var isJackpotWin = false
    public static var jackpotMoney = 1000
    
    public static func jackpotvalues()
    {
        jackpot1 = Int.random(in: 1...3)
        jackpot2 = Int.random(in: 1...3)
        jackpot3 = Int.random(in: 1...3)
        print(jackpot1, jackpot2, jackpot3)
    }
    
    public static func spinOutcomes() -> Void{
        charCounts = [0,0,0,0,0]
        var outcome: [Int] = [0,0,0]
        for index in 0...2{
            outcome[index] = Int.random(in: 1...65)
            switch outcome[index]{
                case 1...27:
                    betLine[index] = 0
                    charCounts[0] = charCounts[0] + 1
                    break
                case 28...46:
                    betLine[index] = 1
                    charCounts[1] = charCounts[1] + 1
                    break
                case 47...59:
                    betLine[index] = 2
                    charCounts[2] = charCounts[2] + 1
                    break
                case 60...64:
                    betLine[index] = 3
                    charCounts[3] = charCounts[3] + 1
                    break
                case 65...65:
                    betLine[index] = 4
                    charCounts[4] = charCounts[4] + 1
                    break
                default:
                    break
            }
        }
        print(betLine)
        print("counts ", charCounts)
    }
    public static func checkJackpot() -> Int {
        print("bet ", currentBetAmount)
        isJackpotWin = false
        if(charCounts[0] == 0){
            if(charCounts[1] == 3){
                return Int(currentBetAmount)*20
            }
            else if(charCounts[2] == 3){
                return Int(currentBetAmount)*40
            }
            else if(charCounts[3] == 3){
                return Int(currentBetAmount)*60
            }
            else if(charCounts[4] == 3){
                isJackpotWin = true
                return 500
            }
            else if(charCounts[1] == 2){
                return Int(currentBetAmount)*2
            }
            else if(charCounts[2] == 2){
                return Int(currentBetAmount)*4
            }
            else if(charCounts[3] == 2){
                return Int(currentBetAmount)*6
            }
            else if(charCounts[4] == 2){
                return Int(currentBetAmount)*10
            }
            else if(charCounts[4] == 1){
                return Int(currentBetAmount)*5
            }
            else {
                return Int(currentBetAmount)
            }
        } else {
            return 0
        }
    }
    
    public static func getCharacter(index: Int) -> String{
        return charMap[index]
    }
    
    public static func checkResults(){
        
        var winningAmount: Int = checkJackpot()
        print("winning ", winningAmount)
        betAmount = betAmount + winningAmount
    }


    public static func spinReels(){
        betAmount = betAmount - currentBetAmount
        
        spinOutcomes()
        checkResults()
    }
    
    public static func reset(){
            betLine = [0,0,0]
            betAmount = 1000
            currentBetAmount = 0
            isValidBet = false
        }
    
}

