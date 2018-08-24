//: Playground - noun: a place where people can play

import UIKit

var unsortedSmallArray = [6,1,2,4,3,0,5]

func mySelectionSort(_ input: [Int]) -> [Int]{
    
    guard input.count > 1 else{
        return input
    }

    var result = input
    
    for index in 0..<(result.count - 1){
        var min = index
        
        for nextIndex in (index + 1)..<result.count{
            if result[nextIndex] < result[min]{
                min = nextIndex
            }
        }
        if (index != min){
            result.swapAt(index, min)
        }
    }
    return result
}
print("this is the unsortedSmallArray when sorted with mySelectionSort\(mySelectionSort(unsortedSmallArray))")
