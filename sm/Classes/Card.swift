//
//  Card.swift
//  Pods
//
//  Created by Adrian Florescu on 30/11/2016.
//
//

import Foundation

public class Card {
    public let question: String
    public let answer: String
    public var repetition: Int
    public var eFactor: Double
    var interval: Double
    
    public init(question q:String,
                answer a: String,
                repetition r: Int = 0,
                eFactor e: Double = 2.5) {
        self.question = q
        self.answer = a
        self.repetition = r
        self.eFactor = e
        self.interval = 0
    }
    
    public func update(with assessment:Double) {
        if (assessment < 3) {
            repetition = 0
            // eFactor remains unchanged
            interval = 0
        } else {
            repetition += 1
            if repetition == 1 {
                interval = 1
            } else if repetition == 2 {
                interval = 6
            } else {
                interval = interval * eFactor
            }
            eFactor = eFactor - 0.8 + 0.28 * assessment - 0.02 * assessment * assessment
            eFactor = setBounds(eFactor)
        }
    }
    
    private func setBounds(_ element: Double) -> Double {
        guard element < 1.3 else { return 1.3 }
        guard element > 2.5 else { return 2.5 }
        return element
    }
    
    public func repetitionInterval() -> Int {
        print(interval)
        return Int(interval + 0.5)
    }
}
