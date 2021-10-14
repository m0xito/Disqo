class MyCircleQueue<T> {
    var arr: [T] = []
    var counter = 0
    
    init(_ k: Int) {
        Array(repeating: -1, count: k)
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
        if counter > 0 {
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

    
}
