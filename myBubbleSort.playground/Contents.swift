//: Playground - noun: a place where people can play

import UIKit

func myBubbleSort (_ input: [Int]) -> [Int]{
    guard input.count > 1 else{
        return input
    }
    var array = input
    var isSwapped = false
    
    repeat{
        isSwapped = false
        for index in 1..<array.count{
            if (array[index] < array[index - 1]){
                array.swapAt(index, index - 1)
                isSwapped = true
            }
        }
    }while isSwapped
    
    return array
}

var bubbleArray = [1, 8, 3, 17, 0, 2]

print("myBubbleSort: \(myBubbleSort(bubbleArray))")
