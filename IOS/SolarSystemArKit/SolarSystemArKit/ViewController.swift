//
//  ViewController.swift
//  SolarSystemArKit
//
//  Created by Davud Gündüz on 14.03.2024.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
       /*
        let myBox = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0.001)
        let boxMaterial = SCNMaterial()
        
        boxMaterial.diffuse.contents = UIImage(named: "/Users/davudgunduz/Desktop/AI/space.jpeg" )
        
        myBox.materials = [boxMaterial]
        
        let node = SCNNode()
        
        node.position = SCNVector3(x: 0.1, y: 0.1, z: -0.5)
        node.geometry = myBox
        
        sceneView.scene.rootNode.addChildNode(node)
        */
        
        let sphere = SCNSphere(radius: 0.5)
        let sphereMetarial = SCNMaterial()
        
        sphereMetarial.diffuse.contents = UIImage(named: "Desktop/AI/space.jpeg")
        sphere.materials = [sphereMetarial]
        
        let sphereNode = SCNNode()
        sphereNode .position = SCNVector3(0.1, 0.1, -0.5)
        sphereNode .geometry = sphere
        
        sceneView.scene.rootNode.addChildNode(sphereNode)
        
        
        
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    // MARK: - ARSCNViewDelegate
    
/*
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
     
        return node
    }
*/
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}
