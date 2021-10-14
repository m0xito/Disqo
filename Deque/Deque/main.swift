class MyCircleQueue<T> {
    
    var arr: [T] = []
    var counter = 0
    
    init(_ k: Int) {
        arr = Array(repeating: -1 as! T, count: k)
    }
    
    func pushFront(_ value: T) -> Bool {
        if isFull() {
            return false
        } else {
            arr.removeLast()
            arr[0] = value
            counter += 1
            return true
        }
        
    }
    
    func popFront(_ value: T) -> Bool {
        if isEmpty() {
            return false
        } else {
            arr[counter - 1] = -1 as! T
            counter -= 1
            return true
        }
            
    }
    
    func first() -> Int {
        if isEmpty() {
            return -1
        } else {
            return arr[counter] as! Int
        }
    }
    
    func last() -> Int {
        if isEmpty() {
            return -1
        } else {
            return arr[0] as! Int
        }
    }
    
    func isEmpty() -> Bool {
        if (counter > 0) ||  (leftStack.isEmpty && rightStack.isEmpty) {
            return false
        } else {
            return true
        }
    }
    
    func isFull() -> Bool {
        if counter == arr.count {
            return true
        } else {
            return false
        }
    }
    
    var leftStack: [T] = []
    var rightStack: [T] = []
   
    var peek: T? {
        leftStack.isEmpty ? rightStack.first : leftStack.last
    }
    
    var description: String {
        if isEmpty() {
            return "Queue is empty"
        }
        if leftStack.isEmpty == false {
            arr.append(contentsOf: rightStack)
        }
        return "------Queue staeted------\n" +
        arr.map({"\($0)"}).joined(separator: " --> ") +
        "\n-----Queue Finished-----"
    }
    
    func pushBack(_ element: T) {
        rightStack.append(element)
    }
    
    func popBack() -> T? {
        
        if isEmpty() {
            return nil
        }
        
        if leftStack.isEmpty {
            leftStack = rightStack.reversed()
            rightStack.removeAll()
        }
        
        return leftStack.removeLast()
    }
    
    func insert(index: Int, element: T) {
        arr.insert(element, at: index)
    }
    
    func printArr() {
        print(arr)
    }
    
}
var inst = MyCircleQueue<Any>(10)
inst.printArr()

