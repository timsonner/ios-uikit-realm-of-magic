//
//  CharacterController.swift
//  Realm of Magic
//
//  Created by Timothy Sonner on 10/28/22.
//

import Foundation

struct CharacterController {
    
    static let shared = CharacterController()
    
    let charactersArray = [
        CharacterStat(name: "Wizard", emoji: "🧙‍♂️", hp: 55, mp: 103, special1: "fire lvl 2", special2: "lightning lvl3")
    ]
}
