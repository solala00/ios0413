//
//  card.swift
//  ios0330
//
//  Created by student on 2020/3/30.
//  Copyright © 2020年 student. All rights reserved.
//

import Foundation
struct Card:Hashable{
    var hashValue: Int{
        return identifier
    }
    //func hash(into:hasher)
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    static var idFactory = 0
    
    static func getUniqueIdentifier() -> Int{
        idFactory += 1
        return idFactory
    }
    
    init(){
        self.identifier = Card.getUniqueIdentifier()
    }
}
