
var sentence = """
Hello there, how are you doing sir, I hope you're doing well. \
I will create this random sentence to test my code. \
Funny enough I cannot type user input, which is sad.
"""
var wordCount: [String: Int] = [:]

sentence.removeAll { $0 == "," || $0 == "." }
for word in sentence.lowercased().split(separator: " ") {
    wordCount[String(word), default : 0] += 1
    //wordCount[String(word)] = (wordCount[String(word)] ?? 0) + 1
}

let wordCountSorted = wordCount.sorted { $0.value > $1.value }
for (word,value) in wordCountSorted {
    print("\(word): \(value)")
}

