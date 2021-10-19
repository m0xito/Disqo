class Deque<T> {
    enum Errors: Error {
        case OutOfBounds
    }
    
     var arr: [T?] = []
    
    var isEmpty: Bool {
        return arr.isEmpty
    }
     var size: Int {
        return arr.count
     }
    
    init(count: Int) {
        arr = Array(repeating: nil, count: count)
    }
    
    init(deque: Deque) {
            let deque = arr
        }
    
    func popBack() -> T? {
        if isEmpty == false {
         return arr.removeLast()
        }
        return nil
    }
    
    func popFront() -> T? {
        if isEmpty == false {
         return arr.removeFirst()
        }
        return nil
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
        arr.insert(element, at: 0)
    }
    
    func insert(element: T, index: Int) {
        arr.insert(element, at: index)
    }
    
    func `subscript`(index: Int) throws -> T? {
        guard index >= 0 && index < arr.count else {
            throw Errors.OutOfBounds
        }
        return arr[index]
     }
    
    func linearSearch<T: Comparable>(element: T) -> T? {
        for i in arr {
            if i as! T == element {
                return i as! T
            }
        }
        return nil
    }
           
    func quicksort<T: Comparable>(arr: [T]) -> [T] {
        guard arr.count > 0 else { return [] }
      
      let pivot = arr[arr.count/2]
      let less = arr.filter { $0 < pivot }
      let equal = arr.filter { $0 == pivot }
      let greater = arr.filter { $0 > pivot }

        return quicksort(arr: less) + equal + quicksort(arr: greater)
    
    }
    
    enum TypesOfSorting {
        case quick
    }
    func sort(typeOfSorting: TypesOfSorting) -> [T] {
        
    }
    
    func findElement<T: Equatable>(element: T) -> Bool {
       return arr.contains(element) ? true : false
    }
    
}
   
