//
//  TimersPage.swift
//  Countdown
//
//  Created by Adam Rowton on 3/27/24.
//

import SwiftUI
import SwiftData

struct ExercisesListPage: View {
    
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) var dismiss
    
    @State private var isShowingSheet = false
    @Query var exercises: [Exercise]
    @State var selectedExercise: Exercise?
    
    var body: some View {
        
        NavigationStack {
            List(selection: $selectedExercise){
             
                ForEach(exercises) { exercise in
                    NavigationLink("\(exercise.name)"){
                        ExerciseTimer(exercise: exercise)
                    }
//                    listItem(exercise: exercise)
                }
                
                .onDelete{ indexSet in
                    for index in indexSet {
                        context.delete(exercises[index])
                    }
                }
                    if exercises.isEmpty {
                        Button {
                            isShowingSheet.toggle()
                        } label: {
                            Text("add exercise")
                        }
                    }
            }
            .navigationTitle("Exercises")
            .sheet(isPresented: $isShowingSheet) { ExerciseEditor() }
            .toolbar{
                    if !exercises.isEmpty { Button {
                        isShowingSheet.toggle()
                    } label: {
                        Text("add exercise")
                    }
                }
            }
            
        }
        
    }
}


struct listItem: View{
    let exercise: Exercise
    
    var body: some View {
        HStack{
            Text("\(exercise.name)")
            Text("\(exercise.activeTime)")
            Text("\(exercise.activeTime)")
        }
    }
}


struct TimersPage_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesListPage()
    }
}
