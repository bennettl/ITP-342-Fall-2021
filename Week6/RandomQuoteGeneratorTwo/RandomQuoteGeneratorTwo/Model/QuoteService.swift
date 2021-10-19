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

    let quotesPath: URL
    
    private var quotes = [Quote]()
       
    
    private init(){
        // Declare the location you want to save data in, in documents folder
        let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        
        // /~/User/path/to/my/folder/Documents/quotes.json
        quotesPath = documentDirectory.appendingPathComponent("quotes.json")
        
        // If the file exists as quotesPath/ load the information
        if FileManager.default.fileExists(atPath: quotesPath.path){
            load()
            
        // Otherwise, there is no file at path, populate quotes with default values
        } else{
            quotes = [
                Quote(message: "Hello", author: "Bennett"),
                Quote(message: "I don't do drugs I am drugs", author: "Salvador Dali"),
                Quote(message: "Never let a good crisis go to waste", author: "Winston ChurcHill"),
                Quote(message: "You miss 100% of the shots you don't take", author: "Andrew"),
                Quote(message: "Hey #2", author: "Bennett")
            ]
        }
        
        
    }
    
    func numberOfQuotes() -> Int{
        return quotes.count
    }
    
    func getRandomQuote () -> Quote{
        let randomIndex = Int.random(in: 0..<quotes.count)
        return quotes[randomIndex]
    }
    
    func getQuote(at index: Int) -> Quote{
        return quotes[index]
    }
    
    func append(quote: Quote){
        quotes.append(quote)
        save()
    }
    
    func insert(_ message: String, by author: String, at index: Int){
        let quote = Quote(message: message, author: author)
        quotes.insert(quote, at: index)
        save()
    }
    
    func insert(quote: Quote, at index: Int){
        quotes.insert(quote, at: index)
        save()
    }
    
    func remove(at index: Int){
        quotes.remove(at: index)
        save()
    }
    
    
    // 1. Save the data
    private func save(){
        // How do we get our native Swift object to be saved as a JSON file in our documents folder?
        let encoder = JSONEncoder()
        let data = try! encoder.encode(quotes)
        let jsonString = String(data: data, encoding: .utf8)!
        try! jsonString.write(to: quotesPath, atomically: false, encoding: .utf8)
    }
    
    // 2. Read the data
    private func load(){
        let data = try! Data(contentsOf: quotesPath)
        let decoder = JSONDecoder()
        quotes = try! decoder.decode([Quote].self, from: data)
    }
    
}
