//
//  WorkoutEditor.swift
//  WorkoutApp
//
//  Created by Adam Rowton on 4/10/24.
//

import SwiftUI
import SwiftData

struct WorkoutEditor: View {
    @Environment(\.dismiss) var dismiss
    
    @Environment(\.modelContext) private var context
    @State var selectedExercises: [Exercise] = []
    
    @State private var workoutName: String = ""
    @State var isShowingSheet = false
    
    @Query var exercises: [Exercise]
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Text("Cancel")
                    }
                    
                    Spacer()
                    
                    Button {
                        // context.insert(exercise)
                        try! context.save()
                        dismiss()
                        //save
                    } label: {
                        Text("Save")
                    }
                }
                TextField("Exercise Name", text: $workoutName)
            }.padding(20)
        }
        
        if selectedExercises.isEmpty {
            VStack{
                Text("No Exercises Selected")
                Button {
                    isShowingSheet.toggle()
                } label: {
                    Text("Add An Exercise")
                }
            }.sheet(isPresented: $isShowingSheet) {
                MultipleSelectionList().presentationDetents([.medium]) }
        } else {
            List{
                ForEach(selectedExercises){ exercise in
                    Text(exercise.name)
                }
            }
            .sheet(isPresented: $isShowingSheet) {
                MultipleSelectionList().presentationDetents([.medium]) }
            
            Button {
                isShowingSheet.toggle()
            } label: {
                Text("Add Another Exercise")
            }
        }
        
    }
}




#Preview {
    WorkoutEditor()
}
