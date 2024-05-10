//
//  WorkoutEditor.swift
//  WorkoutApp
//
//  Created by Adam Rowton on 4/10/24.
//

import SwiftUI
import SwiftData


  
    struct ExerciseSelectionSheet: View {
        
        
        @Environment(\.modelContext) private var context
        @Query var exercises: [Exercise]
        @State var isShowingSheet = false
        @State var selections: [Exercise] = []

        var body: some View {
            List {
                ForEach(self.exercises, id: \.self) { exercise in
                    MultipleSelectionRow(title: exercise.name, isSelected: self.selections.contains(exercise)) {
                        if self.selections.contains(exercise) {
                            self.selections.removeAll(where: { $0 == exercise })
                        }
                        else {
                            self.selections.append(exercise)
                        }
                    }
                }
            }
        }
    }
struct MultipleSelectionRow: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: self.action) {
            HStack {
                Text(self.title)
                if self.isSelected {
                    Spacer()
                    Image(systemName: "checkmark")
                }
            }
        }
    }
}

#Preview {
    ExerciseSelectionSheet()
}

#Preview { 
  
    ExerciseSelectionSheet()
        .modelContainer(exercisePreviewContainer)
}
