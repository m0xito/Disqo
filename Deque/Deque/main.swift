
class RingBufferQueue<T> {
    
    private var elements = [T?]()
    private var front = -1
    private var rear = -1
    

    init(count: Int) {
        elements = Array(repeating: nil, count: count)
    }
    
    var isEmpty: Bool {
        (front == -1 && rear == -1) || (leftStack.isEmpty && rightStack.isEmpty)
    }
    
    var peek: T? {
        if isEmpty { return nil }
        return elements[front]
    }
    
    private func pushBack(element: T) -> Bool {
        
        // if queue is empty
        if front == -1 && rear == -1 {
            front = 0
            rear = 0
            elements[rear] = element
            return true
        }
        
        rear = (rear + 1) % elements.count
        elements[rear] = element
        return true
    }
    
    private func popFront() -> T? {
        
        if isEmpty { return nil }
        
        // if queue has only 1 element
        
        if front == rear {
            defer {
                elements[front] = nil
                front = -1
                rear = -1
            }
            return elements[front]
        }
        
        defer {
            elements[front] = nil
            front = (front + 1) % elements.count
        }
        return elements[front]
         
    }

    
    private var leftStack: [T] = []
    private var rightStack: [T] = []
    
    var allElements: [T] = []
    
    var peek2: T? {
        leftStack.isEmpty ? rightStack.first : leftStack.last
    }
}


