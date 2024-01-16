import Foundation

// Hello Swift App
/*
  To include basic language features.
*/

print("*** Hello, Swift! ***\n")

print("*** Array ***\n")
let ints = [1, 2, 3]
print("ints: \(ints) sum to: \(ints.reduce(0, +))")

print("*** Dictionary ***\n")
let map = [1:1, 2:2, 3:3]
print("map: \(map) sum keys to: \(map.keys.reduce(0, +))")
print("map: \(map) sum values to: \(map.values.reduce(0, +))")
