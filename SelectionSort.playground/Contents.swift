func selectionSort(array: [Int]) -> [Int] {
    var array = array
    for i in 0..<(array.count) {
        var lowestIndex = i
        for j in i..<(array.count) {
            if (array[j] < array[lowestIndex]) {
                lowestIndex = j
            }
        }
        let temp = array[i]
        array[i] = array[lowestIndex]
        array[lowestIndex] = temp
    }
    return array
}

var unsortedArray: [Int] = []
for _ in 0..<10 {
    unsortedArray.append(Int.random(in: 0..<100))
}
print("Starting: ", unsortedArray)
print("Final: ", selectionSort(array: unsortedArray))
