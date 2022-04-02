//
//  backgroundImage.swift
//  MAPD724_SlotMachine_301194819
//
//  Name: Divyesh Solanki
// Student id: 301194819
//

import Foundation
import GameplayKit
import SpriteKit

class BackgroundImage: GameObject {
    init()
    {
        super.init(imageString: "dbBackground", initialScale: 0.42)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func CheckBounds(){
    }
    
    override func Reset(){
    }
    
    // Intializew properties of our Game objects
    override func Start(){
    }
    
    // update 60 times oer second
    override func Update(){
    }
    
    func Move()
    {
    }
}

