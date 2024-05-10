//
//  PreviewSampleData.swift
//  WorkoutApp
//
//  Created by Adam Rowton on 4/21/24.
//

import Foundation
import SwiftData

let exercisePreviewContainer: ModelContainer = {

    do {    
        let container = try ModelContainer(for: Exercise.self,
                                               configurations: ModelConfiguration(isStoredInMemoryOnly: true))

        Task {
            @MainActor in
            let context = container.mainContext
            
            let exercise = Exercise.example()
            let exercise2 = Exercise.example2()
            let exercise3 = Exercise.example3()

            
            
            context.insert(exercise)
            context.insert(exercise2)
            context.insert(exercise3)
        }
        return container
 } catch {
     fatalError("could not load container with error: \(error.localizedDescription)")
    }
}()
