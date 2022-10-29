//
//  ViewController.swift
//  Realm of Magic
//
//  Created by Timothy Sonner on 10/26/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var chosenCharacter = 0
    
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
        chosenCharacter = indexPath.row
        print("chosenCharacter: \(chosenCharacter)")
    }
    
    // Controls the segue to the details view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsViewController" {
            let destinationVC = segue.destination as! CharacterDetailsViewController
            destinationVC.chosenCharacter = CharacterController.shared.charactersArray[chosenCharacter]
        }
    }
}


