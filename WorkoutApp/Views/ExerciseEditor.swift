//
//  TimerOverview.swift
//  Countdown
//
//  Created by Adam Rowton on 3/27/24.
//

import SwiftUI

struct ExerciseEditor: View {
    @Environment(\.dismiss) var dismiss
    
    @Environment(\.modelContext) private var context
    
   
    @State private var isShowingActiveSheet = false
    @State private var isShowingRestSheet = false
    @State private var isShowingSetsSheet = false
    
    
    @State private var exerciseName: String = ""
   
    @State var activeHours: Int = 0
    @State var activeMinutes: Int = 0
    @State var activeSeconds: Int = 0
    
    
    @State private var restHours: Int = 0
    @State private var restMinutes: Int = 0
    @State private var restSeconds: Int = 0
    
    @State private var numberOfSets: Int = 1

    
    var totalActiveTime: Int {
        return activeHours * 3600 + activeMinutes * 60 + activeSeconds
    }
    
    var totalRestTime: Int {
        return restHours * 3600 + restMinutes * 60 + restSeconds
    }
   
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
                        let exercise = Exercise(name: exerciseName, activeTime: totalActiveTime, restTime: totalRestTime, sets: numberOfSets)
                        context.insert(exercise)
                      try! context.save()
                        dismiss()
                        //save
                    } label: {
                        Text("Save")
                    }
                }
                TextField("Exercise Name", text: $exerciseName)
                
            }.padding(20)
                List {
                    
                    HStack {
                        Text("Active Time")
                        Spacer()
                        Text("\(activeMinutes):\(activeSeconds)")
                    }.onTapGesture {
                        isShowingActiveSheet.toggle()
                    }

                    HStack {
                        Text("Rest Time")
                        Spacer()
                        Text("\(restMinutes):\(restSeconds)")
                    }.onTapGesture {
                        isShowingRestSheet.toggle()
                    }
                    
                    HStack {
                        Text("Sets")
                        Spacer()
                        Text("\(numberOfSets)")
                    }.onTapGesture {
                        isShowingSetsSheet.toggle()
                    }
                }
                .sheet(isPresented: $isShowingActiveSheet) { ActivePickerView(activeHours: $activeHours, activeMinutes: $activeMinutes, activeSeconds: $activeSeconds).presentationDetents([.medium]) }
                .sheet(isPresented: $isShowingRestSheet) { RestPickerView(restHours: $restHours, restMinutes: $restMinutes, restSeconds: $restSeconds).presentationDetents([.medium]) }
                .sheet(isPresented: $isShowingSetsSheet) { SetsPickerVIew(numberOfSets: $numberOfSets).presentationDetents([.medium]) }
            }
        }
    
    
    }


struct ExerciseOverview_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseEditor()
    }
}


