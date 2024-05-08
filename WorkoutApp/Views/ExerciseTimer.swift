//
//  TimerDetails.swift
//  Countdown
//
//  Created by Adam Rowton on 3/27/24.
//

import SwiftUI
import SwiftData


struct ExerciseTimer: View {
    
    @Environment(\.modelContext) private var context
    
 var exercise: Exercise
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                   Text("\(exercise.activeTime)")
                    Text("\(exercise.restTime)")
                    }
                .offset(x: 0, y: -150)
                Text("\(exercise.sets)")
                    .offset(x: 0, y: -50)
                Button("Start") {
                    //edit
                }
                .offset(x: 0, y: 75)
            }.navigationTitle("\(exercise.name)")
                .toolbar {
                    Button("Edit") {
                        //edit
                    }
                }
        }
    }
}

//struct TimerDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        ExerciseTimer(exercise: Exercise(name: "", activeTime: 1, restTime: 1, sets: 1))
//            .modelContainer(previewContainer)
//    }
//}

#Preview {
    ModelPreview { exercise in
        ExerciseTimer(exercise: exercise)
    }
}
