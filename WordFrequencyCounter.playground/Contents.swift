var sentence2 = "I I I I I I"

var sentence = """
Hello there, how are you doing sir, I hope you're doing well.
I will create this random sentence to test my code.
Funny enough I cannot type user input, which is sad. I
"""
//print(sentence)

var wordCount: [String: Int] = [:]
var count : Int

//print(sentence.components(separatedBy: " "))

for word in sentence.lowercased().split(separator: " ") {
    if wordCount.contains { $0.key == word } {
        count = wordCount[String(word)]!
        wordCount[String(word)] = count + 1
    } else {
        wordCount[String(word)] = 1
    }
}
print(wordCount)
//print(wordCount["i"]!)
//count = wordCount["i"]!
