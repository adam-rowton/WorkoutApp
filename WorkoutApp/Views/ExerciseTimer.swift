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
    
//    let exercise: Exercise
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                   Text("active time")
                    Text("Rest time")
                    }
                .offset(x: 0, y: -150)
                Text("Sets")
                    .offset(x: 0, y: -50)
                Button("Start") {
                    //edit
                }
                .offset(x: 0, y: 75)
            }.navigationTitle("Exercise Name")
                .toolbar {
                    Button("Edit") {
                        //edit
                    }
                }
        }
    }
}

struct TimerDetails_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseTimer()
    }
}
