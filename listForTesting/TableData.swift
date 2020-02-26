//
//  TableData.swift
//  listForTesting
//
//  Created by Marcello Pontes Domingos on 15/01/20.
//  Copyright © 2020 BRQ. All rights reserved.
//

import UIKit

class TableData{
    static func getProgram() -> [Program]{
        return [
            Program(type: "Anime", likeOrNotlike: .Like),
            Program(type: "Series", likeOrNotlike: .Like),
            Program(type: "Movie", likeOrNotlike: .Like),
            Program(type: "Novel", likeOrNotlike: .Notlike),
            Program(type: "Animation", likeOrNotlike: .Like),
            Program(type: "Documentary", likeOrNotlike: .Notlike)
        ]
    }
}
