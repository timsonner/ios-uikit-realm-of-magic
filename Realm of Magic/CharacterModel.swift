//
//  CharacterModel.swift
//  Realm of Magic
//
//  Created by Timothy Sonner on 10/28/22.
//

import Foundation

class CharacterStat {
    let name: String
    let emoji: String
    let hp: Int
    let mp: Int
    let special1: String
    let special2: String
    
    init(name: String, emoji: String, hp: Int, mp: Int, special1: String, special2: String) {
        self.name = name
        self.emoji = emoji
        self.hp = hp
        self.mp = mp
        self.special1 = special1
        self.special2 = special2
    }
}
