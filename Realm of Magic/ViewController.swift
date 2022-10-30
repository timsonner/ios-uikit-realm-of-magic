//
//  ViewController.swift
//  Realm of Magic
//
//  Created by Timothy Sonner on 10/26/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var characterIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        CharacterController.shared.charactersArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = CharacterController.shared.charactersArray[indexPath.row].name
        
        cell.contentConfiguration = content
        return cell
    }
    
    // Get index path of row selected by user
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // On select, change view controller scene
        performSegue(withIdentifier: "toDetailsViewController", sender: nil)
        // Update global var
        characterIndex = indexPath.row // int
        print("chosenCharacter: \(characterIndex)")
    }
    
    // Controls the segue to the details view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // The segue identifier set by didSelectRowAt 
        if segue.identifier == "toDetailsViewController" {
            let destination = segue.destination as! CharacterDetailsViewController // destination is the CharacterDetailsViewController
            // Pass the indexPath of the chosen character to the CharacterDetailsViewController
            destination.chosenCharacter = CharacterController.shared.charactersArray[characterIndex]
            // CharacterDetailsViewController now has data
        }
    }
}


