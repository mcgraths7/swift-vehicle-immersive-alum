//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Steven McGrath on 8/23/18.
//  Copyright © 2018 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    let driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        speed += maxSpeed / 5
        if speed > maxSpeed {
            speed = maxSpeed
        }
    }
    
    override func decelerate() {
        speed -= maxSpeed / 5
        if speed < 0 {
            speed = 0
        }
    }
    
    func driftRight() {
        if speed > 0 {
            speed = speed * 0.75
            heading = (heading + 90).truncatingRemainder(dividingBy: 360)
        }
    }
    
    func driftLeft() {
        if speed > 0 {
            speed = speed * 0.75
            heading = (heading + 270).truncatingRemainder(dividingBy: 360)
        }
    }
    
    
}
