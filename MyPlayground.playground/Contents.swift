import Cocoa

class Queue<T> {
    
    private var arr: [T?]
    private var rightStack: [T?] = []
    private var leftStack: [T?] = []
    var isEmpty: Bool {
        return arr.isEmpty
    }
     var size: Int {
        return arr.count
    }
    
    
    init(arr: [T?]) {
        self.arr = []
    }
    
    init(_ k: Int) {
        arr = Array(repeating: nil, count: k)
    }
    
    
    init(deque: [T]) {
        arr = deque
        
    }
    
    func popBack() {
        if isEmpty == false {
        arr.removeLast()
        }
    }
    
    func popFront() {
        if isEmpty == false {
            arr.removeFirst()
        }
    }
    
    func first() -> T? {
        if arr.isEmpty == false {
            return arr[0]
        }
        return nil
    }
    
    func last() -> T? {
        if arr.isEmpty == false {
            return arr[arr.count - 1]
        }
        return nil
    }
    
    func pushBack(element: T) {
        arr.append(element)
    }
    
    func pushFront(element: T) {
        if arr.isEmpty {
            arr.append(element)
        } else {
            
        }
    }
    
    func insert(element: T, index: Int) {
        arr.insert(element, at: index)
    }
    
     func subscripts(index: Int) -> T? {
        return arr[index]
    }
    
    do {
    try 4 + 4
    
    }
    
    
}

