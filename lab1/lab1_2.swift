func combineStrings() {
    print("Enter first string:")
    let line1 = readLine() ?? ""

    print("Enter second string:")
    let line2 = readLine() ?? ""

    let combined = line1 + line2
    print("united string: \(combined)")
}

func flipLine() {
    print("Type string for reverse:")
    let input = readLine() ?? ""

    var flipped = ""
    for char in input.reversed() {
        flipped += String(char)
    }
    print("Reversed string: \(flipped)")
}

func countCharacters() {
    print("Write string:")
    let input = readLine() ?? ""

    var characterCount = 0
    for char in input {
        if char != " " {
            characterCount += 1
        }
    }
    print("Number of symbols (excluding spaces): \(characterCount)")
}

func searchSubstring() {
    print("Write string:")
    let input = readLine() ?? ""

    print("Type string for research:")
    let substring = readLine() ?? ""

    var found = false
    var index = 0
    for char in input {
        if char == substring.first {
            if input.dropFirst(index).starts(with: substring) {
                print("Substring found in index: \(index+1)")
                found = true
                break
            }
        }
        index += 1
    }
    if !found {
        print("Substring not found in index.")
    }
}

func main() {
    print("1. Combine Strings")
    print("2. Reverse String")
    print("3. Count amount of symbols")
    print("4. Search Substring")
    print("Choose option (1-4):")

    if let choice = readLine(), let option = Int(choice) {
        switch option {
        case 1:
            combineStrings()
        case 2:
            flipLine()
        case 3:
            countCharacters()
        case 4:
            searchSubstring()
        default:
            print("Falls option. Please choose numbers betwenn 1 and 4.")
        }
    } else {
        print("Wrong enter. Please choose numbers betwenn 1 and 4.")
    }
}

main()