//
//  GameProtocol.swift
//  MAPD724_SlotMachine_301194819
//
//  Name: Divyesh Solanki
// Student id: 301194819
//

import Foundation
protocol  GameProtocol {
    //prevent an object to leaving the screen
    func CheckBounds()
    
    // Reset our GameObject offscreen
    func Reset()
    
    // Intializew properties of our Game objects
    func Start()
    // update 60 times oer second
    func Update()
  
}
