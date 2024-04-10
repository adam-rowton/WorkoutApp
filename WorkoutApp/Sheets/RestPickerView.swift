//
//  RestPickerView.swift
//  WorkoutApp
//
//  Created by Adam Rowton on 4/8/24.
//

import SwiftUI

struct RestPickerView: View {
    
    @Binding var restHours: Int
    @Binding var restMinutes: Int
    @Binding var restSeconds: Int
    
    var body: some View {
        VStack {
            Text("Rest")
        
        HStack {
        
            Picker("", selection: $restHours) {
                                    ForEach(0 ..< 24) { item in
                                        if item < 10 {Text("0\(item) hr")}
                                            else{
                                                Text("\(item) hr")
                                                }
                                    }
                                }
            Picker("", selection: $restMinutes) {
                                    ForEach(0 ..< 60) { item in
                                        if item < 10 {Text("0\(item) min")}
                                            else{
                                                Text("\(item) min")
                                                }
                                    }
                                }
            Picker("", selection: $restSeconds) {
                                    ForEach(0 ..< 60) { item in
                                        if item < 10 {Text("0\(item) sec")}
                                            else{
                                                Text("\(item) sec")
                                                }
                                    }
                                }
                        }.pickerStyle(.wheel)
                }
                        
    }
}

#Preview {
    RestPickerView(restHours: .constant(0), restMinutes: .constant(0), restSeconds: .constant(0))
}
