//
//  Ramp.swift
//  RampUp
//
//  Created by Juan Luque on 2/14/20.
//  Copyright © 2020 Juan Luque. All rights reserved.
//

import Foundation
import SceneKit

class Ramp {
    
    class func getRamp(forName name: String) -> SCNNode {
        switch name {
            case "pipe": return Ramp.getPipe()
            case "pyramid": return Ramp.getPyramid()
            case "quarter": return Ramp.getQuarter()
            default : return Ramp.getPipe()
        }
    }
    
    class func getPipe() -> SCNNode {
        let obj = SCNScene(named: "art.scnassets/pipe.dae")
        let node = obj?.rootNode.childNode(withName: "pipe", recursively: true)
        node?.scale = SCNVector3Make(0.003, 0.003, 0.003)
        node?.position = SCNVector3Make(1.09, 0.52, -1)
        return node!
    }
    
    class func getQuarter() -> SCNNode {
        let obj = SCNScene(named: "art.scnassets/quarter.dae")
        let node = obj?.rootNode.childNode(withName: "quarter", recursively: true)
        node?.scale = SCNVector3Make(0.0072, 0.0072, 0.0072)
        node?.position = SCNVector3Make(1.09, -0.72, -1)
        return node!
    }
    
    class func getPyramid() -> SCNNode {
        let obj = SCNScene(named: "art.scnassets/pyramid.dae")
        let node = obj?.rootNode.childNode(withName: "pyramid", recursively: true)
        node?.scale = SCNVector3Make(0.006, 0.006, 0.006)
        node?.position = SCNVector3Make(1.2, -2.5, -1)
        return node!
    }
    
    class func startRotation(node: SCNNode) {
        let rotate = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: CGFloat(0.01 * Double.pi), z: 0, duration: 0.1))
        node.runAction(rotate)
    }
}
