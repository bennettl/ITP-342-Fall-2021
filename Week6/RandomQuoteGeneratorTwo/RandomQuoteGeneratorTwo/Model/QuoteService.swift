//
//  QuoteService.swift
//  RandomQuoteGeneratorTwo
//
//  Created by lee bennett on 9/29/21.
//

import Foundation

// Another example of singleton

//struct User{
//    let firstName: String
// }
//let currentUser = User(firstName: "Adam")
//class UserService{
//    static var currentUser: User?
//}

// Process Data
class QuoteService{
    
    static let shared = QuoteService()
    
    private init(){ }
    
    /// default / standard
    
    let quotes = [
        Quote(message: "Hey", author: "Bennett"),
        Quote(message: "I don't do drugs I am drugs", author: "Salvador Dali"),
        Quote(message: "Never let a good crisis go to waste", author: "Winston ChurcHill"),
        Quote(message: "You miss 100% of the shots you don't take", author: "Andrew"),
        Quote(message: "Hey #2", author: "Bennett")
    ]
    
    func getRandomQuote () -> Quote{
        let randomIndex = Int.random(in: 0..<quotes.count)
        return quotes[randomIndex]
    }
}
