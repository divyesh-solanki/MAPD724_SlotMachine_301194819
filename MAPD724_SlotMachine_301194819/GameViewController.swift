//
//  AppDelegate.swift
//  MAPD724_SlotMachine_301194819
//
//  Name: Divyesh Solanki
// Student id: 301194819
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var PlayButton: UIButton!
    @IBOutlet weak var betAmountTextField: UITextField!
    
    
    @IBAction func PlayButton(_ sender: Any) {
        GameManager.currentBetAmount = Int(betAmountTextField.text!)!
        GameManager.spinSlots()
        resetForNextRound()
    }
    
    @IBAction func resetbuttonPressed(_ sender: UIButton) {
        GameManager.reset()
    }
    
    @IBAction func exitButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func betChanged(_ sender: UITextField) {
        if let currentBetAmount: Int = Int(betAmountTextField.text ?? "0") {
            if( currentBetAmount>0  && currentBetAmount<=GameManager.betAmount){
                PlayButton.isEnabled = true
                GameManager.isValidBet = true
            } else {
                PlayButton.isEnabled = false
                GameManager.isValidBet = false
            }
        } else {
            PlayButton.isEnabled = false
            GameManager.isValidBet = false
        }
    }
    
    func resetForNextRound(){
        GameManager.currentBetAmount = 0
        GameManager.isValidBet = false
        betAmountTextField.text = ""
        PlayButton.isEnabled = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        PlayButton.isEnabled = false
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = false
            view.showsNodeCount = false
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .landscapeRight
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
