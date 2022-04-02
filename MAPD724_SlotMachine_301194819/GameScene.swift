//
//  AppDelegate.swift
//  MAPD724_SlotMachine_301194819
//
//  Name: Divyesh Solanki
// Student id: 301194819
//

import SpriteKit
import GameplayKit

let screenSize = UIScreen.main.bounds
var screenWidth: CGFloat?
var screenHeight: CGFloat?

class GameScene: SKScene {
    
    var backgroundSpace: BackgroundImage?
    var slotBackground1: Slotbackground?
    var slotBackground2: Slotbackground?
    var slotBackground3: Slotbackground?
    var Playbutton: PlayButton?

    override func didMove(to view: SKView) {
        screenWidth = frame.width
        screenHeight = frame.height
        
        name = "GAME"
        
        // add background to the scene
        backgroundSpace = BackgroundImage() // allocate memory
        backgroundSpace?.position = CGPoint(x: 0, y: -50)

        // add slot background to the scene
        slotBackground1 = Slotbackground() // allocate memory
        slotBackground1?.position = CGPoint(x: 0, y: 0)
        slotBackground2 = Slotbackground() // allocate memory
        slotBackground2?.position = CGPoint(x: -150, y: 0)
        slotBackground3 = Slotbackground()  // allocate memory
        slotBackground3?.position = CGPoint(x: 150, y: 0)
        
        Playbutton = PlayButton() // allocate memory
        Playbutton?.position = CGPoint(x: 300, y: -120)


        addChild(backgroundSpace!) // add backbround to the scene
        addChild(slotBackground1!) // add slot to the scene
        addChild(slotBackground2!) // add slot to the scene
        addChild(slotBackground3!) // add slot to the scene
        addChild(Playbutton!)

    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        
    }
}
