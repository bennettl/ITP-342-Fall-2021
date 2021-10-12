//
//  QuotesViewController.swift
//  RandomQuoteGeneratorTwo
//
//  Created by lee bennett on 10/11/21.
//

import UIKit

class QuotesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - UITableViewDataSource - what to populate the internal contents of tableview
    
    // Optional
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Section \(section)"
//    }

//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 2
//    }
//
    // Require
    
    // How many rows should i display in this section?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return QuoteService.shared.numberOfQuotes()
    }
    
    // What cell should I render at a given index path (section, row)?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Creating an destroy objects is EXPENSIVE!!!
//        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        // ^^ Never do this or people will look at you funny
        
        // 1. Get the data
        // Get the appropriate quote to display
        let quote = QuoteService.shared.getQuote(at: indexPath.row)
        
        // 2. Configure the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell")!
        cell.textLabel?.text = quote.message
        cell.detailTextLabel?.text = quote.author
        
        // 3. Return the cell to the tableview
        return cell
        
    }
    
    // MARK: - UITableViewDelegate - how to respond to events within a tableview
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("user selected row \(indexPath.row)")
    }
    
}
