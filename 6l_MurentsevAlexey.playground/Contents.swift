struct Stack<Element> {
    
    var items = [Element]()
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop()->Element {
        return items.removeLast()
    }
    
   
    subscript(index: Int) -> Int? {

        get {
            var result: Int?
            if index <= items.count - 1 {
                result = items[index] as! Int
            }
            return result
        }
        
    }
    
}

let array = [1, 2, 3]
var queue = Stack<Int>(items: array)
print("задание 1")
print(queue)
print("задание 2")
queue.push(4)
queue.push(5)
print(queue)
queue.pop()
print(queue)
print("задание 3")
print(queue[2])
print(queue[5])
