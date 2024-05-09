//
//  ExerciseSelectionSheet.swift
//  WorkoutApp
//
//  Created by Adam Rowton on 5/8/24.
//

import SwiftUI
import SwiftData

struct ExerciseSelectionSheet: View {
    @Environment(\.editMode) private var editMode
    @Environment(\.modelContext) private var context
    @Query var exercises: [Exercise]
    @State var selectedExercises = Set<Exercise>()
    @State var isShowingSheet = false
    
    
    
    var body: some View {
        NavigationStack {
            HStack {
                if exercises.isEmpty {
                    VStack{
                        Text("No Exercises Available")
                        Button {
                            isShowingSheet.toggle()
                        } label: {
                            Text("Create one now")
                        }
                    }}
                else {
                    VStack {
                        //                        if editMode?.wrappedValue.isEditing == true {
                        List(selection: $selectedExercises){
                            ForEach(exercises){ exercise in
                                Text(exercise.name)
                            }
                        }.toolbar {
                                EditButton()
                                
                                
                            }
                        //}
                        Button {
                            isShowingSheet.toggle()
                        } label: {
                            Text("Create New Exercise")
                        }
                    }
                }
                
            }.navigationTitle("Add Exercises")
            
        }
    }
}


#Preview {
    ExerciseSelectionSheet()
}




