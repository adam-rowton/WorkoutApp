//
//  WorkoutEditorSheet.swift
//  WorkoutApp
//
//  Created by Adam Rowton on 4/8/24.
//

import SwiftUI
import SwiftData

struct WorkoutEditor: View {
    @Query var exercises: [Exercise]
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    WorkoutEditor()
}
