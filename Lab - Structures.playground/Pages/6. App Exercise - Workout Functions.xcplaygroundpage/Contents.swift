/*:
## App Exercise - Workout Functions
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 A `RunningWorkout` struct has been created for you below. Add a method on `RunningWorkout` called `postWorkoutStats` that prints out the details of the run. Then create an instance of `RunningWorkout` and call `postWorkoutStats()`.
 */
struct RunningWorkout {
    var distance: Double
    var time: Double
    var elevation: Double
    struct postWorkoutStats {
        func postWorkoutStats() {
            print("Workout Stats: \(distance) miles, \(time) minutes, \(elevation) elevation")
            
        }
    }
    var workoutStats = RunningWorkout(distance: 10.0, time, 40, elevation, 100.0)
    func workoutStats;.workoutStats()
}
    
    
    //:  A `Steps` struct has been created for you below, representing the day's step-tracking data. It has the goal number of steps for the day and the number of steps taken so far. Create a method on `Steps` called `takeStep` that increments the value of `steps` by one. Then create an instance of `Steps` and call `takeStep()`. Print the value of the instance's `steps` property before and after the method call.
   
    struct Steps {
        func takeStep() {
            
            
        }
        
            var goal: Int
        var goal: Int
    }
    

