//
//  TimersPage.swift
//  Countdown
//
//  Created by Adam Rowton on 3/27/24.
//

import SwiftUI
import SwiftData

struct ExercisePage: View {
  
    @Environment(\.dismiss) var dismiss
    
    @State private var isShowingSheet = false
   @Query var exercises: [Exercise]
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(exercises) { item in
                    Text("\(item.name)")
                    Text("\(item.activeTime)")
                }
                Button {
                    isShowingSheet.toggle()
                } label: {
                    Text("add exercise")
                }
                
                
            }.navigationTitle("Exercises")
             .sheet(isPresented: $isShowingSheet) { ExerciseEditor() }
        }
        
    }
}


struct TimersPage_Previews: PreviewProvider {
    static var previews: some View {
        ExercisePage()
    }
}
