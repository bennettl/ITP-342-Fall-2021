//
//  QuotesViewController.swift
//  RandomQuoteGeneratorTwo
//
//  Created by lee bennett on 10/11/21.
//

import UIKit


// Segue -> UIStoryboardSegue
// Properties
// type -> present modally , show
// source -> the view controller that the transition originates from
// destination -> the view controller that the tranistion ends up with


class QuotesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    
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
        performSegue(withIdentifier: "EditSegue", sender: nil)
        
    }
    
    @IBAction func editButtonDidTapped(_ sender: UIBarButtonItem) {
//        if tableview.isEditing{
//            tableview.isEditing = false
//            sender.title = "Done"
//        } else{
//            tableview.isEditing = true
//            sender.title = "Edit"
//        }
        
        // Less code is better!
        tableview.isEditing = !tableview.isEditing
        sender.title = tableview.isEditing ? "Done" : "Edit"
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            // Delete the quote from the service / model
            QuoteService.shared.remove(at: indexPath.row)

            // Perform the animation to delete
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addQuoteVc = segue.destination as? AddQuoteViewController{
            
            addQuoteVc.onComplete = { quote in
                self.tableview.reloadData()
                self.navigationController?.popViewController(animated: true)
            }
            
            // If we have time, will finish editing
//            if let indexPath = tableview.indexPathForSelectedRow{
//                let quote = QuoteService.shared.getQuote(at: indexPath.row)
//                addQuoteVc.quote = quote
//            }
        }
    }

    
}
