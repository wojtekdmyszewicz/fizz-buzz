import UIKit

struct Robot {
    static let firstName = "Wojtek";
    static let lastName = "Dmyszewicz";
}

func isMultipleOfThree(index : Int) -> Bool {
    return index % 3 == 0;
}

func isMultipleOfFive(index : Int) -> Bool {
    return index % 5 == 0;
}

func isMultipleOfThreeOrFive(index : Int) -> Bool {
    return index % 5 == 0 || index % 3 == 0;
}

// Initial version
func printMultiples_V1() {
    for index in (1...100) {
        if (index % 5 == 0 || index % 3 == 0)
        {
            print((index % 3 == 0 ? "Wojtek " : "") + (index % 5 == 0 ? "Dmyszewicz " : ""));
            continue;
        }
        print(index);
    }
}

// Without helper functions
func printMultiples_V2() {
    for index in (1...100) {
        print(index % 5 == 0 || index % 3 == 0
            ? (index % 3 == 0 ? "Wojtek " : "") + (index % 5 == 0 ? "Dmyszewicz " : "")
            : index);
    }
}

// With helper functions
func printMultiples_V3() {
    for index in (1...100) {
        print(isMultipleOfThreeOrFive(index: index)
            ? (isMultipleOfThree(index: index) ? "Wojtek " : "") + (isMultipleOfFive(index: index) ? "Dmyszewicz" : "")
            : index);
    }
}

// More readable version
func printMultiples_V4() {
    for index in (1...100) {
        let firstname:String = isMultipleOfThree(index: index) ? "Wojtek " : "";
        let lastname:String = isMultipleOfFive(index: index) ? "Dmyszewicz" : "";
        print(isMultipleOfThreeOrFive(index: index) ? firstname + lastname : index);
    }
}

// Switch version
func printMultiples_Switch() {
    for index in (1...100) {
        switch (isMultipleOfFive(index: index), isMultipleOfThree(index: index)) {
            case (false, true):
                print("Wojtek")
            case (true, false):
                print("Dmyszewicz")
            case (true, true):
                print("Wojtek Dmyszewicz")
            default:
                print(index)
        }
    }
}

// While repeat version
func printMultiples_Repeat() {
    var i = Int()
    repeat {
        print(isMultipleOfThreeOrFive(index: i)
            ? (isMultipleOfThree(index: i) ? "Wojtek " : "") + (isMultipleOfFive(index: i) ? "Dmyszewicz" : "")
            : i);
        i += 1
    } while i <= 100
}

printMultiples_Repeat();
