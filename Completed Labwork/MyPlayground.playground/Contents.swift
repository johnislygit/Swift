var counter = 0
for value in 1...5 {
    if value % 2 == 0 {
    continue
}
counter += value
}
print(counter)
