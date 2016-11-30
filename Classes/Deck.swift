//
//  Deck.swift
//  sm
//
//  Created by Adrian Florescu on 30/11/2016.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Foundation

public class Deck {
    var dataSource: [Card] = []
    
    public init() {
        
    }
    
    public func draw() -> Card? {
        if (dataSource.count > 0) {
            let card = dataSource.removeFirst()
            return card
        }
        return nil
    }
    
    public func add(card: Card) {
        dataSource.append(card)
        dataSource.sort { (d1, d2) in d1.repeatOn.compare(d2.repeatOn) == .orderedAscending }
    }
}
