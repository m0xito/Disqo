var aa = [1, 2, 3]
for i in 0...aa.index(aa.count, offsetBy: -1) {
    print(aa[i])
}
