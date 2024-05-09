//
//  Workout.swift
//  Countdown
//
//  Created by Adam Rowton on 3/31/24.
//

import Foundation
import SwiftData

@Model
class Workout{
  
    @Attribute(.unique) let name: String
    let exercises: [Exercise]
    let totalTime: Int?
    
    init(name: String, exercises: [Exercise]?, totalCount: Int?, totalTime: Int?) {
        self.name = name
        self.exercises = exercises!
        self.totalTime = totalTime
    }
    
    }

