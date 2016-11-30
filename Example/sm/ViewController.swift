//
//  ViewController.swift
//  sm
//
//  Created by Adrian Florescu on 11/30/2016.
//  Copyright (c) 2016 Adrian Florescu. All rights reserved.
//

import UIKit
import sm

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(SuperMemo.sayHello())
        
        let c: Card = Card(question: "question", answer: "answer")
        c.update(with: 3.0)
        log(c)
        c.update(with: 1.0)
        log(c)
        c.update(with: 5.0)
        log(c)
        c.update(with: 5.0)
        log(c)
        c.update(with: 5.0)
        log(c)
        c.update(with: 5.0)
        log(c)
        c.update(with: 5.0)
        log(c)
    }
    
    func log(_ c: Card) {
        print("q = \(c.question) a = \(c.answer) r = \(c.repetition) e = \(c.eFactor) day = \(c.repetitionInterval())")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

