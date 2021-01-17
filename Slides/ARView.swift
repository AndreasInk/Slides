//
//  ARView.swift
//  Slides
//
//  Created by Andreas on 1/16/21.
//

import SwiftUI
import ARKit

struct ARsView: View {
  
    var body: some View {
        ZStack {
            ARView()
                .ignoresSafeArea()
        }
    }
}
struct ARView: UIViewRepresentable {
    let arView = ARSCNView(frame: .zero)
    func makeUIView(context: Context) -> ARSCNView {
            
       
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = .horizontal
        // Run the view's session
        arView.session.run(configuration)
            
        return arView
    }
    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {

       // guard !surfaceDetected else { return }
       // surfaceDetected = true

        guard let planeAnchor = anchor as? ARPlaneAnchor else { return }

        let x = CGFloat(planeAnchor.transform.columns.3.x)
        let y = CGFloat(planeAnchor.transform.columns.3.y)
        let z = CGFloat(planeAnchor.transform.columns.3.z)
        let position = SCNVector3(x,y,z)
        
         let box = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0)
            let node = SCNNode(geometry: box)
            node.position = SCNVector3(0,0,0)
         
        arView.scene.rootNode.addChildNode(node)
        node.position = position

    }
    func updateUIView(_ uiView: ARSCNView, context: Context) {
        
    }
}
