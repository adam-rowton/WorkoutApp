//
//  SetsPickerVIew.swift
//  WorkoutApp
//
//  Created by Adam Rowton on 4/8/24.
//

import SwiftUI

struct SetsPickerVIew: View {
    
    @Binding var numberOfSets: Int

    var body: some View {
        VStack {
                           Text("Number of sets")
       
                           Picker("", selection: $numberOfSets) {
                               ForEach(0 ..< 100) { item in
                                   if item > 0 {
                                       Text("\(item)")
                                   }
                               }
       
                           }.pickerStyle(.wheel)
                       }    }
}

#Preview {
    SetsPickerVIew(numberOfSets: .constant(1))
}
