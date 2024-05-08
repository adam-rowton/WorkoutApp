//
//  PreviewSampleData.swift
//  WorkoutApp
//
//  Created by Adam Rowton on 4/21/24.
//

import Foundation
import SwiftData

let previewContainer: ModelContainer = {

    do {    
        let container = try ModelContainer(for: Exercise.self,
                                               configurations: ModelConfiguration(isStoredInMemoryOnly: true))

        Task {
            @MainActor in
            let context = container.mainContext
            
            let exercise = Exercise.example()
            
            context.insert(exercise)
        }
        return container
 } catch {
     fatalError("could not load container with error: \(error.localizedDescription)")
    }
}()
