import UIKit

func isMultipleOfThree(index : Int) -> Bool {
    return index % 3 == 0;
}

func isMultipleOfFive(index : Int) -> Bool {
    return index % 5 == 0;
}

func isMultipleOfThreeOrFive(index : Int) -> Bool {
    return index % 5 == 0 || index % 3 == 0;
}

for index in (1...100) {
    print(isMultipleOfThreeOrFive(index: index) ? (isMultipleOfThree(index: index) ? "Wojtek " : "") + (isMultipleOfFive(index: index) ? "Dmyszewicz" : "") : index);
}
