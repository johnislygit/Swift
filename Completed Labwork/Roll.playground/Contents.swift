var roll = Int.random(in: 1...6)
if roll == 1 { //accounts for the first roll being 1
    print(roll)
}
else {
    while roll != 1 { //rolls and generates numbers while it isn't 1
        print(roll)
        roll = Int.random(in: 1...6)
    }
    if roll == 1 { //displays the last roll being 1 since 1 wouldn't be displayed in the loop
        print(roll)
    }
}
