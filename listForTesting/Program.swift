//
//  Program.swift
//  listForTesting
//
//  Created by Marcello Pontes Domingos on 15/01/20.
//  Copyright © 2020 BRQ. All rights reserved.
//

import UIKit

struct Program {
    var type: String
    var likeOrNotlike: LikeOrNotlike
    
    func LONLString() -> String{
        switch likeOrNotlike {
        case .Like:
            return "Like"
        case .Notlike:
            return "Notlike"
        }
    }
}
