func ret(a: String) -> Int {
    for i in "hello2 " {
        if let ab = Int(String(i)) {
            return Int(String(i))!
        }
    }
    return 0

}


print(ret(a: "k"))


func firstDigit(inputString: String) -> Character {
    for i in inputString {
        if let aa = Int(String(i)) {
            return i
        }
    }
    return "1"
}
