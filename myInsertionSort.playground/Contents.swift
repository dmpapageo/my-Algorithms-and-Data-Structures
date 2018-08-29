//: Playground - noun: a place where people can play

import UIKit

func myInsertionSort(_ input: [Int]) -> [Int]{
    var array = input
    
    for index in 1..<array.count{
        var firstUnsortedIndex = index
        while firstUnsortedIndex > 0 && array[firstUnsortedIndex] < array[firstUnsortedIndex - 1]{
            array.swapAt(firstUnsortedIndex - 1, firstUnsortedIndex)
            firstUnsortedIndex -= 1
        }
    }
    return array
}

var sampleArray = [17, 12, 11, 7, 10, 13, 4,  5, 6]

print("myInsertionSort: \(myInsertionSort(sampleArray))")
