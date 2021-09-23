import Foundation

func ourOwnSortFunction(s1: String, s2: String) -> Bool{
    return s1 < s2
}


// Closure - piece of executable block of code
// a function IS a closure
// closure expression -> way to define a block of code, does not have name

var name = ["Bennett", "Adam", "Jane", "Jelly"]
//name.sort(by: ourOwnSortFunction(s1:s2:))
name.sort(by: { (s1: String, s2: String) -> Bool in
    return s1 < s2
})


// Type inference
//name.sort(by: <#T##(String, String) throws -> Bool#>)
//name.sort(by: { (s1, s2)  in
//    return s1 < s2
//})

// Single expression closures
//name.sort(by: { (s1, s2) in s1 < s2 })

// Trailing Closure syntax
//name.sort{ (s1, s2) in s1 < s2 }

// Shorthand argument names
name.sort{ $0 < $1 }


print(name)


// Sorting Example
