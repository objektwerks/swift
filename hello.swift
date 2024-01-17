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
let array = [1, 2, 3]
print("array: \(array) sum to: \(array.reduce(0, +))")

print("\n*** Dictionary ***")
let map = [1: 1, 2: 2, 3: 3]
for (key, value) in map {
  print("key-value: \(key)-\(value)")
}
print("map: \(map) sum keys to: \(map.keys.reduce(0, +))")
print("map: \(map) sum values to: \(map.values.reduce(0, +))")

print("\n*** Set ***")
let set: Set = [1, 2, 3, 3]
print("set: \(set) sum to: \(set.reduce(0, +))")

print("\n*** Enum ***")
enum Week: String, CaseIterable {
  case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}
print("enum cases: \(Week.allCases)")

print("\n*** Tuple ***")
let statusCode = ("Success", 200)
print("type: Tuple(String, Int) status: \(statusCode.0) code: \(statusCode.1)")
let (status, code) = statusCode
print("type: Tuple(String, Int) [destructured] status: \(status) code: \(code)")

print("\n*** Struct ***")
struct RGB {
  let red, green, blue: Int
  func toString() -> String {
    "type: RGB red: \(red) green: \(green) blue: \(blue)"
  }
}
let rgb = RGB(red: 1, green: 2, blue: 3)
print(rgb.toString())

print("\n*** Class ***")
class Person {
  let name: String
  let age: Int
  init(name: String, age: Int) {
      self.name = name
      self.age = age
  }
  func toString() -> String {
    "type: Person name: \(name) age: \(age)"
  }
}
let person = Person(name: "Fred Flintstone", age: 24)
print(person.toString())

print("\n*** Inheritance ***")
class Shape {
  func area() -> Double { 0.0 }
}
class Circle: Shape {
  let pi = 3.14
  let radius: Double
  init(radius: Double) {
    self.radius = radius
  }
  func diameter() -> Double { radius * 2 }
  override func area() -> Double { pi * (radius * radius) }
  func toString() -> String {
    "type: Circle radius: \(radius) diameter: \(diameter()) area: \(area())"
  }
}
let circle = Circle(radius: 3.0)
print(circle.toString())

print("\n*** Protocol ***")
protocol Id {
  var id: String { get }
}
class User : Id {
  let id: String
  init(id: String) {
    self.id = id
  }
  func toString() -> String {
    "type: User id: \(id)"
  }
}
let user = User(id: "abc123")
print(user.toString())

print("\n*** Extension ***")
class Box : Shape {
  let side: Double
  init(side: Double) {
    self.side = side
  }
  override func area() -> Double { side * side }
}
extension Box {
  func toString() -> String {
    "type: Box side: \(side) area: \(area())"
  }
}
let box = Box(side: 3)
print(box.toString())

print("\n*** Function ***")
func double(number: Int) -> Int {
  number + number
}
print("func double(2) -> \(double(number: 2))")

print("\n*** Closure ***")
let unsorted = ["c", "b", "a"]
print("unsorted: \(unsorted)")
print("sorted: \(unsorted.sorted(by: { s, ss in s < ss } ))")

print("\n*** Error Handling ***")
enum IOError: Error {
  case ioError(String)
}
func doIO() throws { throw IOError.ioError("IO failed!") }
do {
  try doIO()
} catch IOError.ioError(let error) {
  print("io error occured: \(error)")
}

print("\n*** Optional ***")
let someNumber: Int? = Optional.some(42)
let noneNumber: Int? = Optional.none
print("some: \(someNumber ?? 0) none: \(noneNumber == nil)")

print("\n*** Optional Chaining ***")
class Parent { var child: Child? }
class Child { var number: Int = 1 }
let parent = Parent()
let child = parent.child?.number // or forced: parent.child!.number
print("does parent have a child? - \(child != nil)")

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

print("\n*** Switch ***")
let letter = "z"
switch letter {
  case "a":
    print("match on - a")
  case "z":
    print("match on - z")
  default:
    print("switch failed: \(letter)")
}

print("\n*** Async / Await ***")
func randomInt() async -> Int {
    Int.random(in: 1...6)
}
let result = await randomInt()
print("async randomInt: \(result)")