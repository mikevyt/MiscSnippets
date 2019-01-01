func mergeSort(array: [Int]) -> [Int] {
    if (array.count == 1) {
        return array
    }
    var leftArray = Array(array[0..<array.count/2])
    var rightArray = Array(array[array.count/2..<array.count])
    leftArray = mergeSort(array: leftArray)
    rightArray = mergeSort(array: rightArray)
    return merge(left: leftArray, right: rightArray)
}

func merge(left: [Int], right: [Int]) -> [Int] {
    var left = left
    var right = right
    var mergedArray: [Int] = []
    while (left.count != 0 && right.count != 0) {
        if (right[0] < left[0]) {
            mergedArray.append(right[0])
            right.remove(at: 0)
        } else {
            mergedArray.append(left[0])
            left.remove(at: 0)
        }
    }
    
    while (left.count != 0) {
        mergedArray.append(left[0])
        left.remove(at: 0)
    }
    while (right.count != 0) {
        mergedArray.append(right[0])
        right.remove(at: 0)
    }
    return mergedArray
}

var unsortedArray: [Int] = []
for _ in 0..<10 {
    unsortedArray.append(Int.random(in: 0..<100))
}
print("Array: ", unsortedArray)
print("Final: ", mergeSort(array: unsortedArray))
