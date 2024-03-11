//
//  GameScene.swift
//  AngryBirdsClone
//
//  Created by Davud Gündüz on 6.03.2024.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var pinkBird = SKSpriteNode()
    var box1 = SKSpriteNode()
    var box2 = SKSpriteNode()
    var box3 = SKSpriteNode()
    var box4 = SKSpriteNode()
    var box5 = SKSpriteNode()
    
    
    override func didMove(to view: SKView) {
        
        // Physics Body
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        self.scene?.scaleMode = .aspectFit
        
        // Bird
        pinkBird = childNode(withName: "PinkBird-1") as! SKSpriteNode
        let pinkBirdTexture = SKTexture(imageNamed: "PinkBird-1")
        pinkBird.physicsBody = SKPhysicsBody(circleOfRadius: pinkBirdTexture.size().height/14)
        pinkBird.physicsBody?.affectedByGravity = true
        pinkBird.physicsBody?.isDynamic = true
        pinkBird.physicsBody?.mass = 0.5
        
        
        
        // Box
        
        let boxTexture = SKTexture(imageNamed: "box1")
        let sizeBox1 = CGSize(width: boxTexture.size().width / 10, height: boxTexture.size().height / 5)
        
        let boxTexture2 = SKTexture(imageNamed: "box3")
        let sizeBox2 = CGSize(width: boxTexture2.size().width / 5, height: boxTexture2.size().height / 5)
        
        box1 = childNode(withName: "box1") as! SKSpriteNode
        box1.physicsBody = SKPhysicsBody(rectangleOf: sizeBox1 )
        box1.physicsBody?.isDynamic = true
        box1.physicsBody?.affectedByGravity = true
        box1.physicsBody?.allowsRotation = true
        box1.physicsBody?.mass = 0.5
        
        box2 = childNode(withName: "box2") as! SKSpriteNode
        box2.physicsBody = SKPhysicsBody(rectangleOf: sizeBox1 )
        box2.physicsBody?.isDynamic = true
        box2.physicsBody?.affectedByGravity = true
        box2.physicsBody?.allowsRotation = true
        box2.physicsBody?.mass = 0.5
        
        box3 = childNode(withName: "box3") as! SKSpriteNode
        box3.physicsBody = SKPhysicsBody(rectangleOf: sizeBox2 )
        box3.physicsBody?.isDynamic = true
        box3.physicsBody?.affectedByGravity = true
        box3.physicsBody?.allowsRotation = true
        box3.physicsBody?.mass = 0.5
        
        box4 = childNode(withName: "box4") as! SKSpriteNode
        box4.physicsBody = SKPhysicsBody(rectangleOf: sizeBox2 )
        box4.physicsBody?.isDynamic = true
        box4.physicsBody?.affectedByGravity = true
        box4.physicsBody?.allowsRotation = true
        box4.physicsBody?.mass = 0.5
        
        box5 = childNode(withName: "box5") as! SKSpriteNode
        box5.physicsBody = SKPhysicsBody(rectangleOf: sizeBox2 )
        box5.physicsBody?.isDynamic = true
        box5.physicsBody?.affectedByGravity = true
        box5.physicsBody?.allowsRotation = true
        box5.physicsBody?.mass = 0.5
        
        
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
    
   
