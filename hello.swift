import Foundation

// Hello Swift App
/*
  To include basic language features.
*/

print("*** Hello, Swift! ***")

print("\n*** String ***")
let string = "string"
let multi =
"""
multi
line
string
"""
print("string: \(string)")
print("multi: \(multi)")

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
}
print("enum cases: \(Week.allCases)")

print("\n*** Struct ***")
struct RGB {
   let red: Int
   let green: Int
   let blue: Int
}
let rgb = RGB(red:1, green:2, blue:3)
print("rgb -> r: \(rgb.red) g: \(rgb.green) b: \(rgb.blue)")

print("\n*** Class ***")
class Person {
  let name: String
  let age: Int
  init(name: String, age: Int) {
      self.name = name
      self.age = age
  }
}
let person = Person(name:"Fred Flintstone", age:24)
print("person -> name: \(person.name) age: \(person.age)")

print("\n*** If Else ***")
let condition = true
if condition {
  print("if condition: true")
} else {
  print("else condition: false")
}

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

print("\n*** While Loop ***")
var i = 0
while i < 3 {
   i += 1
   print("while loop n: \(i)")
}