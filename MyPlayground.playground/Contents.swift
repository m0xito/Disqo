func depositProfit(deposit: Int, rate: Int, threshold: Int) -> Int {
    var count = 0
    var deposit = deposit
    while deposit < threshold {
        deposit *= (1 + (rate / 100))
        count += 1
    }
    return count
}


print(depositProfit(deposit: 100, rate: 20, threshold: 150))
