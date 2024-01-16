import Foundation

// Hello Swift App
/*
  To include basic language features.
*/

print("*** Hello, Swift! ***")

print("\n*** Array ***")
let array: Array<Int> = [1, 2, 3]
print("array: \(array) sum to: \(array.reduce(0, +))")

print("\n*** Dictionary ***")
let map: Dictionary<Int, Int> = [1:1, 2:2, 3:3]
print("map: \(map) sum keys to: \(map.keys.reduce(0, +))")
print("map: \(map) sum values to: \(map.values.reduce(0, +))")

print("\n*** Set ***")
let set: Set<Int> = [1, 2, 3, 3]
print("set: \(set) sum to: \(set.reduce(0, +))")

print("\n*** Enum ***")
enum Week: String, CaseIterable {
  case monday, tuesday, wednesday, thursday, friday, saturday, sunday
};
print("enum cases: \(Week.allCases)")

print("\n*** For Loop ***")
let letters = ["a", "b", "c"]
for letter in letters {
    print("letter: \(letter)")
}
for (index, letter) in letters.enumerated() {
  print("index: \(index) - letter: \(letter)")
}
for letter in letters where letter != "a"{
    print("where != a: \(letter)")
}