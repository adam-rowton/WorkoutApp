/*

 Goal:
 create an interval timer app with configurable intervals for different exercises
 in between intervals, user is prompted to enter reps
 user can see historical data for each timer/workout in profile/history tab
 
 mailestones:
 
 1. create simple interval timer and timer builder/editor
 2. add input prompts and send/save data to backend service
        manage data with firebase?
 3. create history tab to view past data pulled from backend
 4. settings page for general configurations (sounds, volume etc.)
 
 Roadblocks/external needs:
 Database/users management
    firebase? https://firebase.google.com/docs/auth/ios/firebaseui
    user management through apple? https://developer.apple.com/documentation/authenticationservices
    explore local app storage vs external database https://developer.apple.com/xcode/swiftdata/
 
 User management may need to happen at same time as database or user data can be hard coded at first
 
 
 Pages:
 
 Workouts list page
 Exercises list page
 profile page/history
 settings
 
 views:
 create/edit exercise
 create/edit workout
 individual timers
 
 FLow:
 user opens app to timer list
    button to add new timer
        takes user to create timer view
            view saves changes to timerManager - timerManager may eventually be handled by firebase of swiftData
                    
 
    user can select existing timer
        takes user to timer view
        user can edit or start the timer
            editing updates timerManager
 
 
 milestone 1 needs:
 
 timers list
 timer builder
 timer editor
 timer manager
 
 
 Tmmrw:
 
 create form for exercise
 
 use wheelpicker for float inputs:
 
 https://developer.apple.com/documentation/swiftui/wheelpickerstyle
*/
