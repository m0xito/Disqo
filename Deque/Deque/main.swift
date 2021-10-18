class Deque<T>{
    
    enum Errors: Error {
        case OutOfBounds
    }
    
    private var arr: [T?] = []
    let index: Int
    let count = 1
    var isEmpty: Bool {
        return arr.isEmpty
    }
     var size: Int {
        return arr.count
    }
    
    init(deque: Deque, index: Int) {
        let deque: [T] = []
        self.index = index
    }
    
    
    
    
    init(count: Int, index: Int) {
        arr = Array(repeating: nil, count: count)
        self.index = index
    }
    
   
    func popBack() {
        if isEmpty == false {
        arr.removeLast()
        }
    }
    
    func popFront() {
        if isEmpty == false {
            arr[0] = nil
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
        arr[arr.count - 1] = element
    }
    
    func pushFront(element: T) {
        if arr[0] == nil {
            arr[0] = element
        }
        
    }
    
    func insert(element: T, index: Int) {
        if arr[index] == nil {
            arr[index] = element
        } else {
            print("That index is busy")
            
        }
    }

    func getElement(index: Int) throws  -> T? {
        guard index < arr.count else {
            throw Errors.OutOfBounds
        }
        return arr[index]
     }
    
    func checkErrors() {
        do {
            let res = try getElement(index: index)
            print(res)
        }
        catch {
            print("Got an error \(Errors.OutOfBounds)")
        }
    }

    func sort<T: Comparable>(arr: [T]) -> [T] {
        guard arr.count > 1 else { return arr }
        
        let leftArray = Array(arr[0..<arr.count/2])
        let rightArray = Array(arr[arr.count/2..<arr.count])
        
        return merge(left: sort(arr: leftArray), right: sort(arr: rightArray))
    }
    
    func binarySearch<T: Comparable>(searchValue: T) -> Bool {
        var leftIndex = 0
        var rightIndex = arr.count - 1
        
        while leftIndex <= rightIndex {
            let middleIndex = (leftIndex + rightIndex) / 2
            let middleValue = arr[middleIndex]
            
            if middleValue as! T  == searchValue {
                return true
            }
            
            if searchValue < middleValue as! T {
                rightIndex = middleIndex - 1
            }
            
            if searchValue > middleValue as! T {
                leftIndex = middleIndex + 1
            }
        }
        return false
    }
    
    func merge<T: Comparable>(left: [T], right: [T]) -> [T] {
        var mergedArr = [T]()
        var left = left
        var right = right
        
        while left.count > 0 && right.count > 0 {
            if left.first! > right.first! {
                mergedArr.append(left.removeFirst())
            }
            mergedArr.append(right.removeFirst())
        }
        return mergedArr + left + right
    }
    
    func findElement<T: Equatable>(element: T) -> Bool {
        for i in arr {
            if i as! T == element {
                return true
            }
        }
        return false
    }
    
    func printArr() {
        print(arr)
    }

}


var a = Deque<Any>(count: 2, index: 47)
a.pushFront(element: 31)
a.insert(element: 21, index: 1)


