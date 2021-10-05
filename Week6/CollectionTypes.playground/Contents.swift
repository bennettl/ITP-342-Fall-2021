import Foundation


// Array

// Create
// Generic data type -> is  a type that works with other data types

var emptyArray = [Int]()

let names: Array<String> = ["Mark", "Tiffany", "Andrew"]

let numbers: [Int] = [0, 2, 1]

var iPhones = ["iPhone SE", "iPhone 13"]

var name: String? = "Bennett"
//print(name)

// Access - subscript notation
names[1]
names.isEmpty
names.count
names.contains("Bennett")
names.contains("Tiffany")

// Modification - add / remove
iPhones.append("iPhone 12")
iPhones.insert("iPhone X", at: 1)
iPhones.remove(at: 2)
iPhones

// Enumeration - fancy word for going through each element of the array


for n in iPhones {
 print("The name is \(n)")
}

// Very cool
//let capitlizedIPhones = iPhones.map { $0.uppercased() }
//
//print(capitlizedIPhones)


// Dictionary


// Create

//let buildings: Dictionary<String, String> = [
//    "THH": "Taper Hall",
//    "TCC": "Tutor Campus Center",
//    "KAP": "Kaprielian Hall"
//]

//let buildings: [String: String] = [
//    "THH": "Taper Hall",
//    "TCC": "Tutor Campus Center",
//    "KAP": "Kaprielian Hall"
//]

var buildings = [
    "THH": "Taper Hall",
    "TCC": "Tutor Campus Center",
    "KAP": "Kaprielian Hall"
]

// Access
buildings["THH"]
buildings.count
buildings.isEmpty
print(buildings["TTH"] ?? "Default Value")

// Modification - add / remove
buildings["JFF"] = "Jill and Frank Fertitta Hall"
print(buildings)
buildings["THH"] = nil
print(buildings)

// Set
buildings["JFF"] = "Fertitta Hall"
print(buildings)

// Enumerate

for (key, value) in buildings {
    print("key \(key) value \(value)")
}

let keys = Array(buildings.keys)
