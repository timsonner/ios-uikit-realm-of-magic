//
//  CharacterDetailsViewController.swift
//  Realm of Magic
//
//  Created by Timothy Sonner on 10/28/22.
//

import UIKit

class CharacterDetailsViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var chosenCharacter: CharacterStat?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = chosenCharacter?.emoji
    }
}
