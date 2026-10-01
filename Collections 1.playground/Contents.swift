//  Notes:
    //  The goal here is to try to handle a large set of data manually, without using a collection like Array or Dictionary. Obviously, those would be better solutions to this problem, but avoid them nonetheless.

//  Instructions:
    //  You work for a tow company. You are building an app to help them monitor and tow cars at a local lot. Unfortunately, your boss is going through a midlife crisis and for some reason, because of this he will not tolerate you using arrays or dictionaries of any kind in your code.

    //  Below is a ParkingLot class configured to hold one property, parkingSpace1. When a car is not parked, the string will be empty. When a car is parked, the car's make and model will be stored. If the car is towed, it will go back to being empty.
    //  Now, you need to scale your app to monitor 19 more parking spaces.
        //  Add 19 more parkingSpace variables to ParkingLot, each following the naming pattern: parkingSpace1, parkingSpace2, parkingSpace3, and so on.
        //  Update the parkCar and towCar functions to accept a property called parkingSpace of type Int. Park or tow the car in the appropriate parking space accordingly.

    //  The towing company has relaxed their rules and now, not every car in the parking gets towed immediately. Add two more functions, giveTicket(parkingSpace: Int) and collectFee(parkingSpace: Int).
        //  `giveTicket()` should add "- TICKETED" to the string for that parking space.
        //  `collectFee()` should charge the car's owner $1 for each character in the string for their parking space. Add the total to the cashCollected property.

//  ⌺ Black Diamond Challenge:
    //  A couple more functions are needed:
        //  ParkingLot.explode() should immediately cause any and all Ford Pintos to explode, thus emptying their parking space.
        //  Obviously you will want to be able to view a list of all cars parked in your lot. ParkingLot.list() should print a list of all spaces, including space number; if a space is empty, don't print an empty string, but the word "Empty" instead.

import Foundation

class ParkingLot {
    
    var parkingSpace1 = ""
    var parkingSpace2 = ""
    var parkingSpace3 = ""
    var parkingSpace4 = ""
    var parkingSpace5 = ""
    var parkingSpace6 = ""
    var parkingSpace7 = ""
    var parkingSpace8 = ""
    var parkingSpace9 = ""
    var parkingSpace10 = ""
    var parkingSpace11 = ""
    var parkingSpace12 = ""
    var parkingSpace13 = ""
    var parkingSpace14 = ""
    var parkingSpace15 = ""
    var parkingSpace16 = ""
    var parkingSpace17 = ""
    var parkingSpace18 = ""
    var parkingSpace19 = ""
    var parkingSpace20 = ""
    
    func parkCar(makeAndModel: String, parkingSpace: Int) {
        switch parkingSpace {
        case 1: parkingSpace1 = makeAndModel
        case 2: parkingSpace2 = makeAndModel
        case 3: parkingSpace3 = makeAndModel
        case 4: parkingSpace4 = makeAndModel
        case 5: parkingSpace5 = makeAndModel
        case 6: parkingSpace6 = makeAndModel
        case 7: parkingSpace7 = makeAndModel
        case 8: parkingSpace8 = makeAndModel
        case 9: parkingSpace9 = makeAndModel
        case 10: parkingSpace10 = makeAndModel
        case 11: parkingSpace11 = makeAndModel
        case 12: parkingSpace12 = makeAndModel
        case 13: parkingSpace13 = makeAndModel
        case 14: parkingSpace14 = makeAndModel
        case 15: parkingSpace15 = makeAndModel
        case 16: parkingSpace16 = makeAndModel
        case 17: parkingSpace17 = makeAndModel
        case 18: parkingSpace18 = makeAndModel
        case 19: parkingSpace19 = makeAndModel
        case 20: parkingSpace20 = makeAndModel
        default: print("Invalid parking space")
        }
    }
    
    func giveTicket(parkingSpace: Int) {
        switch parkingSpace {
        case 1: parkingSpace1 += " - TICKETED"
        case 2: parkingSpace2 += " - TICKETED"
        case 3: parkingSpace3 += " - TICKETED"
        case 4: parkingSpace4 += " - TICKETED"
        case 5: parkingSpace5 += " - TICKETED"
        case 6: parkingSpace6 += " - TICKETED"
        case 7: parkingSpace7 += " - TICKETED"
        case 8: parkingSpace8 += " - TICKETED"
        case 9: parkingSpace9 += " - TICKETED"
        case 10: parkingSpace10 += " - TICKETED"
        case 11: parkingSpace11 += " - TICKETED"
        case 12: parkingSpace12 += " - TICKETED"
        case 13: parkingSpace13 += " - TICKETED"
        case 14: parkingSpace14 += " - TICKETED"
        case 15: parkingSpace15 += " - TICKETED"
        case 16: parkingSpace16 += " - TICKETED"
        case 17: parkingSpace17 += " - TICKETED"
        case 18: parkingSpace18 += " - TICKETED"
        case 19: parkingSpace19 += " - TICKETED"
        case 20: parkingSpace20 += " - TICKETED"
        default: break
        }
        func collectFee(parkingSpace: Int) {
            var cashCollected = 0
            
            switch parkingSpace {
            case 1:
                cashCollected += parkingSpace1.count
            case 2:
                cashCollected += parkingSpace2.count
            case 3:
                cashCollected += parkingSpace3.count
            case 4:
                cashCollected += parkingSpace4.count
            case 5:
                cashCollected += parkingSpace5.count
            case 6:
                cashCollected += parkingSpace6.count
            case 7:
                cashCollected += parkingSpace7.count
            case 8:
                cashCollected += parkingSpace8.count
            case 9:
                cashCollected += parkingSpace9.count
            case 10:
                cashCollected += parkingSpace10.count
            case 11:
                cashCollected += parkingSpace11.count
            case 12:
                cashCollected += parkingSpace12.count
            case 13:
                cashCollected += parkingSpace13.count
            case 14:
                cashCollected += parkingSpace14.count
            case 15:
                cashCollected += parkingSpace15.count
            case 16:
                cashCollected += parkingSpace16.count
            case 17:
                cashCollected += parkingSpace17.count
            case 18:
                cashCollected += parkingSpace18.count
            case 19:
                cashCollected += parkingSpace19.count
            case 20:
                cashCollected += parkingSpace20.count
            default:
                break
            }
        }
    }
}

