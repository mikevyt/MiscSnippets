class Node {
    var value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

class LinkedList {
    var head: Node?
    
    //insert (in order/out of order)
    func insert(value: Int) {
        if head == nil {
            head = Node(value: value, next: nil)
            return
        }
        var currentNode = head
        while (currentNode!.next != nil) {
            currentNode = currentNode?.next
        }
        currentNode!.next = Node(value: value, next: nil)
    }
    func remove(value: Int) {
        if head == nil {
            return
        }
        var currentNode = head
        var prevNode: Node?
        while (currentNode != nil && currentNode!.value != value) {
            prevNode = currentNode
            currentNode = currentNode?.next
        }
        if currentNode != nil {
            prevNode!.next = currentNode!.next
        }
    }
    func show() {
        if head == nil {
            return
        }
        var currentNode = head
        while (currentNode != nil) {
            print(currentNode?.value ?? "", terminator:" -> ")
            currentNode = currentNode?.next
        }
        print("nil")
    }
}

var list = LinkedList()
let array = [2, 3, 1, 17, 4]
for i in (0..<5) {
    list.insert(value: array[i])
}
print("Previous List:")
list.show()

list.remove(value: 3)
print("\nRemoved List:")
list.show()

list.insert(value: 92)
print("\nInserted List:")
list.show()
