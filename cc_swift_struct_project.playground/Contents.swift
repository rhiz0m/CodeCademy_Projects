import UIKit

// Structured Gym //

struct Exercise {
  var name: String
  var muscleGroups: [String]
  var reps: Int
  var sets: Int
  var totalReps: Int

  // Init method with parameters
  init(name: String, muscleGroups: [String], reps: Int, sets: Int) {
    // self takes the value of the properties
    self.name = name
    self.muscleGroups = muscleGroups
    self.reps = reps
    self.sets = sets
    self.totalReps = reps * sets
  }
}

var pushUp = Exercise(name: "push up", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 4)

var deadLift = Exercise(name: "deadlift", muscleGroups: ["back", "glutes", "hamstrings", "core,", "trapezius"], reps: 3, sets: 7)


struct Regimen {
  var dayOfWeek: String
  var exercises: [Exercise]

  init(dayOfWeek: String, exercises: [Exercise]) {
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }


  func printExercisePlan() {
    print("Today is \(self.dayOfWeek) and the plan is to:")

    for exercise in self.exercises {
      print("Do \(exercise.sets) sets of \(exercise.reps) reps of \(exercise.name) targeting \(exercise.muscleGroups.joined(separator: " "))")
      print("That's a total of \(exercise.totalReps) \(exercise.name)s.")
    }
    
  }
}


var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises: [deadLift, pushUp])
mondayRegimen.printExercisePlan()





