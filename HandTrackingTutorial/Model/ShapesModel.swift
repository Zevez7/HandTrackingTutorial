//
//  Sphere.swift
//  HandTrackingTutorial
//
//  Created by Dat Nguyen on 11/17/24.
//
import SwiftUI
import RealityKit

struct ShapeModel: View {
    static let whiteMaterial = SimpleMaterial(color: .white, isMetallic: true)

    var body: some View {
        RealityView { content in

        }
    }

    
    /// The entity with a box geometry.
    static let boxEntity: Entity = {
        // Create a new entity instance.
        let entity = Entity()

        // Create a new mesh resource.
        let boxSize: Float = 0.1
        let boxMesh = MeshResource.generateBox(size: boxSize)

        // Add the mesh resource to a model component, and add it to the entity.
        entity.components.set(ModelComponent(mesh: boxMesh, materials: [whiteMaterial]))

        return entity
    }()
}
