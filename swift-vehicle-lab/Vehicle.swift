//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Steven McGrath on 8/23/18.
//  Copyright © 2018 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0
    var heading: Double = 0
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast() {
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0
    }
    
    func accelerate() {
        speed += (maxSpeed / 10.0)
        if speed > maxSpeed {
            speed = maxSpeed
        }
    }
    
    func decelerate() {
        speed -= (maxSpeed / 10)
        if speed < 0 {
            speed = 0
        }
    }
    
    func turnRight() {
        if speed > 0 {
            speed = speed / 2
            heading = (heading + 90).truncatingRemainder(dividingBy: 360)
        }
    }
    
    func turnLeft() {
        if speed > 0 {
            speed = speed / 2
            heading = (heading + 270).truncatingRemainder(dividingBy: 360)
        }
    }
}
