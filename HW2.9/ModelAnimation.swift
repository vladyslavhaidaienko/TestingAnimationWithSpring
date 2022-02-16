//
//  ModelAnimation.swift
//  HW2.9
//
//  Created by Vladyslav Haidaienko on 30.09.2021.
//

struct Animation {
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        preset: \(name)
        cerve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """    }

    static func getSomeAnimation() -> Animation {
        Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "",
            force: Float.random(in: 1...2),
            duration: Float.random(in: 1...2),
            delay: 0.3)
    }
}


