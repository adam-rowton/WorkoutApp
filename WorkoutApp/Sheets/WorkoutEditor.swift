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
                        
                        try! context.save()
                        dismiss()
                        //save
                    } label: {
                        Text("Save")
                    }
                }
//                TextField("Workout Name", text: )
                
            }.padding(20)
        }
    }
}


#Preview {
    WorkoutEditor()
}
