import RealityKit
//
//  BoxModel.swift
//  HandTrackingTutorial
//
//  Created by Dat Nguyen on 11/18/24.
//
import SwiftUI

struct BoxModel: View {

    var x: Float
    var y: Float
    var z: Float

    init(x: Float, y: Float, z: Float) {
        self.x = x
        self.y = y
        self.z = z

    }

    var body: some View {
        RealityView { content in
            let boxMesh = MeshResource.generateBox(size: 0.3)
            let material = SimpleMaterial(color: .green, isMetallic: true)

            let boxEntity = ModelEntity(
                mesh: boxMesh, materials: [material])
            boxEntity.components
                .set(InputTargetComponent())

            boxEntity.generateCollisionShapes(recursive: true)
            boxEntity.components.set(
                GroundingShadowComponent(castsShadow: true))
            boxEntity.transform.translation.z = z
            boxEntity.transform.translation.y = y
            boxEntity.transform.translation.x = x
            content.add(boxEntity)
        }.gesture(
            DragGesture().targetedToAnyEntity().onChanged({ value in
                if let parent = value.entity.parent {
                    // Convert gesture position to the parent's coordinate space
                    let newPosition = value.convert(
                        value.location3D, from: .local, to: parent)
                    value.entity.position = newPosition
                }
            }
            )
        )

    }

}
