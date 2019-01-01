func insertionSort(array: [Int]) -> [Int] {
    var array = array
    for i in (1..<array.count) {
        var counter = i
        while (counter > 0 && array[counter] < array[counter - 1]) {
            let temp = array[counter - 1]
            array[counter - 1] = array[counter]
            array[counter] = temp
            counter -= 1
        }
    }
    return array
}

var unsortedArray: [Int] = []
for _ in 0..<10 {
    unsortedArray.append(Int.random(in: 0..<100))
}
print("Starting: ", unsortedArray, "\n")
print("\nFinal: ", insertionSort(array: unsortedArray))
