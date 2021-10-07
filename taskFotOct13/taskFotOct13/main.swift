//
//  main.swift
//  taskFotOct13
//
//  Created by Movses Aghabekyan on 07.10.21.
//

import Foundation

// Create class Wrapper. Inside Wrapper class define struct called Item. Item struct should have one Int parameter named value. For Wrapper class add initializer which will get object of Item type and will assign it to property of the class of type Item. Then create object of type Item and object of type Wrapper. Pass that newly create Item object to the object of Wrapper type.

class Wrapper {
    
    struct Item {
        let value: Int
    }
    
    var item: Item
    
    init(item: Item) {
        self.item = item
    }
}
    
let wrapper = Wrapper(item: Wrapper.Item(value: 7))
print(wrapper.item)
    








