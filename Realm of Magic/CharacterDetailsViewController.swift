//
//  CharacterDetailsViewController.swift
//  Realm of Magic
//
//  Created by Timothy Sonner on 10/28/22.
//

import UIKit

class CharacterDetailsViewController: UIViewController {
    
    @IBOutlet weak var characterSpecial2: UILabel! // Special 2
    @IBOutlet weak var characterSpecial1: UILabel! // Special 1
    
    @IBOutlet weak var emojiLabel: UILabel! // Emoji of character
    
    @IBOutlet weak var characterName: UILabel! // Name
    
    @IBOutlet weak var characterHP: UILabel! // Hit points
    
    @IBOutlet weak var characterMP: UILabel! // Magic points
    var chosenCharacter: CharacterStat?

    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = chosenCharacter?.emoji // shared array from CharacterController
        characterName.text = chosenCharacter?.name
        characterHP.text = "HP \(String(describing: chosenCharacter!.hp))" // force unwrap character.hp
        characterMP.text = "MP \(String(describing: chosenCharacter!.mp))"// force unwrap character.mp
        characterSpecial1.text = "Special 1 \(chosenCharacter!.special1)" // ! force unwrap
        characterSpecial2.text = "Special 2 \(chosenCharacter!.special2)"  // ! force unwrap
    }
}

