//
//  TimerEditor.swift
//  Countdown
//
//  Created by Adam Rowton on 3/27/24.
//

import Foundation
import SwiftData

@Model
class Exercise {
    @Attribute(.unique) var name: String
    var activeTime: Int
    var restTime: Int
    var sets: Int
  
    init(name: String, activeTime: Int, restTime: Int, sets: Int) {
        self.name = name
        self.activeTime = activeTime
        self.restTime = restTime
        self.sets = sets
    }
    static func example() -> Exercise {
        let exercise = Exercise(name: "Bench", activeTime: 60, restTime: 120, sets: 5)
        return exercise
    }
    
    static func example2() -> Exercise {
        let exercise = Exercise(name: "Squat", activeTime: 120, restTime: 150, sets: 5)
        return exercise
    }
    
    static func example3() -> Exercise {
        let exercise = Exercise(name: "Deadlift", activeTime: 90, restTime: 180, sets: 5)
        return exercise
    }
}


