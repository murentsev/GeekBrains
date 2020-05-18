// 1
func evenNumber(_ number: Int) -> Bool {
  return (number % 2) == 0 ? true : false
}


// 2
func divide3 (_ number: Int) -> Bool {
  return (number % 3) == 0 ? true : false
}


// 3
var array: [Int] = []
for i in 1...100 {
    array.append(i)
}
array


// 4
for element in array {
    if evenNumber(element) || !divide3(element) {
        array.remove(at: array.firstIndex(of: element)!)
    }
}
array


// 5
func newFibFromIndex(array: inout [Int], index: Int) {
    if index > 0 && index < array.count {
        let new = array[index - 1] + array[index + 1]
        array.append(new)
    } else {
        print("Индекс находится за границами массива")
    }
}
array.count
for i in 1...100 {
    newFibFromIndex(array: &array, index: i)
}
array.count
for i in array {
    print(i)
}


// 6
var simple: [Int] = [2]

func del(el: Int) -> Bool {
    var del = false
    for element in simple {
        if el % element == 0 {
           del = true
        }
    }
    return del
}


func NextSimple(last: Int) -> Int {
    var new: Int = 0
    let check = last * 2 - 1
    for i in last+1...check {
        if simple.firstIndex(of: i) == nil && !del(el: i)  {
            new = i
            break
        }
    }
    return new
}

while simple.count < 100 {
    simple.append(NextSimple(last: simple.last!))
}

simple


