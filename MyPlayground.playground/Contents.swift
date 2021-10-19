 class Animal {
    var legsCount: Int
    
    init(legsCount: Int) {
        self.legsCount = legsCount
    }
    
    
    convenience init(anotherAnimal: String) {
        var number = anotherAnimal == "bird" ? 2 : 4
        self.init(legsCount: number)
    }
 }

 
 class Wolf: Animal {
    var hasFur: Bool
    
    init(hasFur: Bool) {
        self.hasFur = hasFur
        super.init(legsCount: 4)
    }
 }
 
 
 var animal = Animal(anotherAnimal: "bird")
 animal.legsCount
 
 var wolf = Wolf(hasFur: true)
 wolf.legsCount
