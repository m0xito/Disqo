func commonCharacterCount(s1: String, s2: String) -> Int {
    var lettersAndCount = [Character: Int]()
    for letter in s1 {
        if lettersAndCount[letter] != nil {
            lettersAndCount[letter]! += 1
        } else {
            lettersAndCount[letter] = 1
        }
    }
    var result = 0
    for letter in s2  {
        guard let count = lettersAndCount[letter], count != 0 else { continue }
        lettersAndCount[letter]! -= 1
        result += 1
   }
    
    return result
}
