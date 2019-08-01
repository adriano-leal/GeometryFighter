//
//  ShapeType.swift
//  sceneKitGame_challenge
//
//  Created by Adriano Ramos on 31/07/19.
//  Copyright © 2019 Adriano Ramos. All rights reserved.
//

import Foundation

enum ShapeType:Int {
    case box = 0
    case sphere
    case pyramid
    case torus
    case capsule
    case cylinder
    case cone
    case tube
    
    static func random() -> ShapeType {
        let maxValue = tube.rawValue
        let rand = arc4random_uniform(UInt32(maxValue+1))
        return ShapeType(rawValue: Int(rand))!
    }
}
