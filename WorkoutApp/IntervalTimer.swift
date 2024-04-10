//
//  CountdownApp.swift
//  Countdown
//
//  Created by Adam Rowton on 3/26/24.
//

import SwiftUI
import SwiftData

@main
struct IntervalTimer: App {
    

    var body: some Scene {
        WindowGroup {
               ContentView()
               .modelContainer(for: [Exercise.self, Workout.self])
           
        }
    }
}
