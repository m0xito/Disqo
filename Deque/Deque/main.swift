class Queue<T> {
    
    private var arr: [T?]
    var isEmpty: Bool {
        return arr.isEmpty
    }
    private var size: Int {
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
    
    func pushFirst(element: T) {
                                   
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
    
    
    
}
