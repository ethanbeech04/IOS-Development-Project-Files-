

//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
struct Computer {
    let ram: Int
    let yearManufactured: Int
    
    init?(ram: Int, yearManufactured: Int) {
        if ram <= 0 {
            return nil
        }
        self.ram = ram
        self.yearManufactured = yearManufactured
    }
}

let computer1 = Computer(ram: 16, yearManufactured: 2024)
let computer2 = Computer(ram: 0, yearManufactured: 2024)

if let computer = computer1 {
    print(computer.ram, computer.yearManufactured)
}

if let computer = computer2 {
    print(computer.ram, computer.yearManufactured)
}


/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
