//
//  WorkoutsPage.swift
//  Countdown
//
//  Created by Adam Rowton on 3/28/24.
//
//table syntax
//Table(workouts) {
//     
//    TableColumn("Name", value: \.name)
//    TableColumn("Total") { workout in
//        Text("\(workout.totalCount)")}
//    TableColumn("Time") { workout in
//        Text("\(workout.totalTime)")}
//}.navigationTitle("workouts")

import SwiftUI
import SwiftData

struct WorkoutsPage: View {
    @Environment(\.modelContext) var context

    @State private var isShowingSheet = false
    var workouts: [Workout] = []
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(workouts) { item in
                    Text("\(item.name)")
                }
                Button {
                    isShowingSheet.toggle()
                } label: {
                    Text("Create Workout")
                }
                
                
            }.navigationTitle("Workouts")
             .sheet(isPresented: $isShowingSheet) { WorkoutEditor() }
        }
        
    }
}


#Preview {
    WorkoutsPage()
}
