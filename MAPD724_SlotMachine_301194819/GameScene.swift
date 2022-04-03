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
    
    var backgroundImage: BackgroundImage?
    var Slotbackground1: Slotbackground?
    var SlotBackground2: Slotbackground?
    var SlotBackground3: Slotbackground?
    var playButton: PlayButton?
    var animeCharacter1: AnimeCharacter?
    var animeCharacter2: AnimeCharacter?
    var animeCharacter3: AnimeCharacter?

    var coin: SimpleSprite?
    var QuitButton: SimpleSprite?
    var ResetButton: SimpleSprite?

    var coinLabel: SKLabelNode?
    var jackpotLabel: SKLabelNode?
    var betAmountLabel: SKLabelNode?

    var betInput: SKShapeNode?

    override func didMove(to view: SKView) {
        screenWidth = frame.width
        screenHeight = frame.height
        
        name = "GAME"


        coinLabel = SKLabelNode(text: "1000")
        coinLabel?.position = CGPoint(x: 305, y: 140)
        coinLabel?.fontSize = 25
        coinLabel?.fontName = "AvenirNext"

        jackpotLabel = SKLabelNode(text: "Jackpot: 1000")
        jackpotLabel?.position = CGPoint(x: 0, y: 140)
        jackpotLabel?.fontSize = 30
        jackpotLabel?.fontName = "AvenirNext-Bold"

        betAmountLabel = SKLabelNode(text: "BET")
        betAmountLabel?.position = CGPoint(x: 300, y: -55)
        betAmountLabel?.fontSize = 15
        betAmountLabel?.fontName = "AvenirNext-Bold"

        betInput = SKShapeNode(rectOf: CGSize(width: 60, height: 20), cornerRadius: 5)
        betInput?.position = CGPoint(x: 300, y: -70)
        betInput?.fillColor = .clear
        betInput?.strokeColor = UIColor.white
        betInput?.lineWidth = 2

        backgroundImage = BackgroundImage() // allocate memory
        backgroundImage?.position = CGPoint(x: 0, y: -50)
        
        Slotbackground1 = Slotbackground() // allocate memory
        Slotbackground1?.position = CGPoint(x: 0, y: 0)
        SlotBackground2 = Slotbackground() // allocate memory
        SlotBackground2?.position = CGPoint(x: -150, y: 0)
        SlotBackground3 = Slotbackground() // allocate memory
        SlotBackground3?.position = CGPoint(x: 150, y: 0)

        playButton = PlayButton() // allocate memory
        playButton?.position = CGPoint(x: 300, y: -120)
        playButton?.alpha = 0.3

        animeCharacter1 = AnimeCharacter(imageName: "goku", initialScale: 0.08) // allocate memory
        animeCharacter1?.position = CGPoint(x:0, y: 15)
        animeCharacter2 = AnimeCharacter(imageName: "boo", initialScale: 0.08) // allocate memory
        animeCharacter2?.position = CGPoint(x:150, y: 15)
        animeCharacter3 = AnimeCharacter(imageName: "vegeta", initialScale: 0.12) // allocate memory
        animeCharacter3?.position = CGPoint(x:-150, y: 15)

        coin = SimpleSprite(imageName: "coin", initialScale: 0.03) // allocate memory
        coin?.position = CGPoint(x:260, y: 150)

        QuitButton = SimpleSprite(imageName: "exit", initialScale: 0.05) // allocate memory
        QuitButton?.position = CGPoint(x: -320, y: 150)

        ResetButton = SimpleSprite(imageName: "reset", initialScale: 0.2) // allocate memory
        ResetButton?.position = CGPoint(x: -320, y: -120)

        backgroundImage?.zPosition = 1
        Slotbackground1?.zPosition = 2
        SlotBackground2?.zPosition = 2
        SlotBackground3?.zPosition = 2
        playButton?.zPosition = 2
        animeCharacter1?.zPosition = 3
        animeCharacter2?.zPosition = 3
        animeCharacter3?.zPosition = 3
        coinLabel?.zPosition = 3
        coin?.zPosition = 3
        jackpotLabel?.zPosition = 3
        betAmountLabel?.zPosition = 3
        betInput?.zPosition = 3
        QuitButton?.zPosition = 3
        ResetButton?.zPosition = 3

        addChild(backgroundImage!)
        addChild(Slotbackground1!)
        addChild(SlotBackground2!)
        addChild(SlotBackground3!)
        addChild(playButton!)
        addChild(animeCharacter1!)
        addChild(animeCharacter2!)
        addChild(animeCharacter3!)
        addChild(coin!)
        addChild(coinLabel!)
        addChild(jackpotLabel!)
        addChild(betAmountLabel!)
        addChild(betInput!)
        addChild(QuitButton!)
        addChild(ResetButton!)
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
        // Called before each frame is rendered
    }
}
