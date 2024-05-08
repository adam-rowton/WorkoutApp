//
//  ContentView.swift
//  Countdown
//
//  Created by Adam Rowton on 3/26/24.
//

import SwiftUI

struct ContentView: View {
 
    var body: some View {
        TabView {
            WorkoutsPage()
                .tabItem {
                    Image(systemName: "dumbbell.fill")
                    Text("Workouts")
                }
            ExercisesListPage()
                .tabItem {
                    Image(systemName: "clock")
                    Text("Exercises")
                }
            
            ProfilePage()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
            
            SettingsPage()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
           
    }
}
