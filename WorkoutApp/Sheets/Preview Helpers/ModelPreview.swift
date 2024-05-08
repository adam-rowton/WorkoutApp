//
//  ModelPreview.swift
//  WorkoutApp
//
//  Created by Adam Rowton on 5/7/24.
//

import SwiftUI
import SwiftData


struct ModelPreview<Model: PersistentModel, Content: View>: View {
    var content: (Model) -> Content
    
    init(@ViewBuilder content: @escaping (Model) -> Content) {
        self.content = content
    }
    
    var body: some View {
        PreviewContentView(content: content)
            .modelContainer(previewContainer)
    }
    
    struct PreviewContentView: View {
        
        @Query private var models: [Model]
        var content: (Model) -> Content
        
        @State private var waitedToShowIssue = false
        
        var body: some View {
            if let model = models.first {
                content(model)
            } else {
                ContentUnavailableView("could not model for previews", image: "xmark")
                    .task {
                        Task {
                            try await Task.sleep(for: .seconds(1))
                        }
                    }
            }
        }
    }
}
