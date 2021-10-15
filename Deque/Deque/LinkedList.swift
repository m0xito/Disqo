public class Node {
    var value: String
     
    init(value: String) {
      self.value = value
    }
    
    var next: Node?
    weak var previous: Node?

}


public class LinkedList {
  fileprivate var head: Node?
  private var tail: Node?

  public var isEmpty: Bool {
    return head == nil
  }

  public var first: Node? {
    return head
  }

  public var last: Node? {
    return tail
  }
    
    
    public func append(value: String) {
      // 1
      let newNode = Node(value: value)
      // 2
      if let tailNode = tail {
        newNode.previous = tailNode
        tailNode.next = newNode
      }
      // 3
      else {
        head = newNode
      }
      // 4
      tail = newNode
    }
    
    
    public func popFront() {
      head = nil
      tail = nil
    }
}



let dogBreeds = LinkedList()
dogBreeds.append(value: "Labrador")
dogBreeds.append(value: "Bulldog")
dogBreeds.append(value: "Beagle")
dogBreeds.append(value: "Husky")
