func bubbleSort(array: [Int]) -> [Int] {
    var array = array
    for i in 0..<(array.count - 1) {
        for j in 0..<(array.count - 1 - i) {
            if (array[j] > array[j + 1]) {
                let temp = array[j]
                array[j] = array[j + 1]
                array[j + 1] = temp
            }
        }
    }
    return array
}

var unsortedArray: [Int] = []
for _ in 0..<10 {
    unsortedArray.append(Int.random(in: 0..<100))
}
print("Starting: ", unsortedArray)
print("Final: ", bubbleSort(array: unsortedArray))
