//
//  PickerView.swift
//  WorkoutApp
//
//  Created by Adam Rowton on 4/8/24.
//

import SwiftUI



struct ActivePickerView: View {
    @Environment(\.dismiss) var dismiss
    
    
    
    
    @Binding var activeHours: Int
    @Binding var activeMinutes: Int
    @Binding var activeSeconds: Int
    
    var body: some View  {
        
        VStack {
            Text("Active Time")
            
            HStack {
                
                Picker("", selection: $activeHours) {
                    ForEach(0 ..< 24) { item in
                        if item < 10 {Text("0\(item) hr")}
                            else{
                                Text("\(item) hr")
                                }
                    }
                }
                Picker("", selection: $activeMinutes) {
                    ForEach(0 ..< 60) { item in
                        if item < 10 {Text("0\(item) min")}
                            else{
                                Text("\(item) min")
                                }
                    }
                }
                Picker("", selection: $activeSeconds) {
                    ForEach(0 ..< 60) { item in
                        if item < 10 {Text("0\(item) sec")}
                            else{
                                Text("\(item) sec")
                                }
                    }
                }
            }.pickerStyle(.wheel)
                .toolbar {
                    Button("Cancel") { dismiss() }
                }
            
            
        }
        
        
    }
}


#Preview {
    ActivePickerView(activeHours: .constant(0), activeMinutes: .constant(0), activeSeconds: .constant(0))
}
