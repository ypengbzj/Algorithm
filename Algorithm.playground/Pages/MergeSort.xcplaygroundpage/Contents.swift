//: [Previous](@previous)

import Foundation

func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }
    
    let middleIndex = array.count / 2
    
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
    
    return merge(leftPile: leftArray, rightPile: rightArray)
}

func merge<T: Comparable>(leftPile: [T], rightPile: [T]) -> [T] {
    var leftIndex = 0
    var rightIndex = 0
    
    var orderedPile = [T]()
    orderedPile.reserveCapacity(leftPile.count + rightPile.count)
    
    while leftIndex < leftPile.count && rightIndex < rightPile.count {
        if leftPile[leftIndex] < rightPile[rightIndex] {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
        } else if leftPile[leftIndex] > rightPile[rightIndex] {
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        } else {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        }
    }
    
    while leftIndex < leftPile.count {
        orderedPile.append(leftPile[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < rightPile.count {
        orderedPile.append(rightPile[rightIndex])
        rightIndex += 1
    }
    
    return orderedPile
}

let array = [2, 1, 5, 4, 9]
let sortedArray = mergeSort(array)
let array2 = ["Tom", "Harry", "Ron", "Chandler", "Monica"]
let sortedArray2 = mergeSort(array2)

//: [Next](@next)
