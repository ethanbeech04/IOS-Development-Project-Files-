/*:
## App Exercise - Watering Schedule

 >These exercises reinforce Swift concepts in the context of a plant care app.

 Every plant in the app will conform to one protocol.

 Write a protocol called `Plant` with three requirements: a property called `name` of type `String` that can be read, a property called `daysBetweenWatering` of type `Int` that can be read, and a method called `careTip()` that returns a `String`.
 */


protocol Plant {
    var name: String { get }
    var daysBetweenWatering: Int { get }
    func careTip() -> String
}


//:  Write a struct called `Fern` that conforms to `Plant`. Ferns need water every 3 days, and the care tip should say to keep the fern out of direct sun. The fern's `name` should be set when you create one, like `Fern(name: "Kitchen Fern")`.
struct Fern: Plant {
    let name: String
    let daysBetweenWatering: Int = 3

    func careTip() -> String {
        return "Keep the fern out of direct sun."
    }
}




//:  Write a struct called `Cactus` that conforms to `Plant`. A cactus needs water every 14 days, and the care tip should say to let the soil dry out completely. Its `name` should also be set when you create one.


struct Cactus: Plant {
    let name: String
    let daysBetweenWatering: Int = 14

    func careTip() -> String {
        return "Let the soil dry out completely."
    }
}


//:  Write a function called `printWateringSchedule(for:)` that takes a `[Plant]`. For each plant, print one line with its name, how many days apart to water it, and its care tip.

func printWateringSchedule(for plants: [any Plant]) {
    for plant in plants {
        print("\(plant.name): Water every \(plant.daysBetweenWatering) days. \(plant.careTip())")
    }
}
let plants: [any Plant] = [
    Fern(name: "Kitchen Fern"),
    Cactus(name: "Desk Cactus")
]

printWateringSchedule(for: plants)

//Kitchen Fern: Water every 3 days. Keep the fern out of direct sun.
//Desk Cactus: Water every 14 days. Let the soil dry out completely.

//:  Create a variable called `myGarden` of type `[Plant]` that holds at least one `Fern` and one `Cactus`. Give each plant its own name. Pass `myGarden` to `printWateringSchedule(for:)` and observe the printout.
var myGarden: [any Plant] = [
    Fern(name: "Kitchen Fern"),
    Cactus(name: "Desk Cactus")
]

printWateringSchedule(for: myGarden)

//Kitchen Fern: Water every 3 days. Keep the fern out of direct sun.
//Desk Cactus: Water every 14 days. Let the soil dry out completely.




//:  The user just bought a basil plant. Write a struct called `Basil` that conforms to `Plant`. Basil needs water every day, so `daysBetweenWatering` is 1. Its care tip should tell the user to pick leaves from the top. Do not change `printWateringSchedule(for:)`.
struct Basil: Plant {
    let name: String
    let daysBetweenWatering: Int = 1

    func careTip() -> String {
        return "Pick leaves from the top."
    }
}
myGarden.append(Basil(name: "Fresh Basil"))

printWateringSchedule(for: myGarden)

//Fresh Basil: Water every 1 days. Pick leaves from the top.



//:  Append a `Basil` to `myGarden`. Call `printWateringSchedule(for:)` again and observe the printout.
myGarden.append(Basil(name: "Fresh Basil"))

printWateringSchedule(for: myGarden)

//Kitchen Fern: Water every 3 days. Keep the fern out of direct sun.
//Desk Cactus: Water every 14 days. Let the soil dry out completely.
//Fresh Basil: Water every 1 days. Pick leaves from the top.




//:  Write a function called `plantsNeedingWater(in:daysSinceWatering:)`. It takes a `[Plant]` and an `Int`, and it returns a `[Plant]`. A plant needs water when `daysSinceWatering` is greater than or equal to its `daysBetweenWatering`. Call it with `myGarden` and `3`, then print the name of each plant it returns. You should see the fern and the basil, but not the cactus.
func plantsNeedingWater(in plants: [any Plant], daysSinceWatering: Int) -> [any Plant] {
    return plants.filter { plant in
        daysSinceWatering >= plant.daysBetweenWatering
    }
}

let plantsToWater = plantsNeedingWater(in: myGarden, daysSinceWatering: 3)

for plant in plantsToWater {
    print(plant.name)
}

//Kitchen Fern Fresh Basil




//:  `printWateringSchedule(for:)` was written before `Basil` existed, but it printed your basil plant without any changes. In a comment, explain why.


// Answer: printWateringSchedule(for:) works with Basil without changes because
// Basil conforms to the Plant protocol and implements all its requirements.
// The function can handle any type that conforms to Plant.


/*:
 [Previous](@previous)  |  page 2 of 8  |  [Next: Exercise - Default Implementations](@next)
 */
