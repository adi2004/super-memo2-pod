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
    var card: Card?
    var deck: Deck?

    @IBOutlet weak var repeatOn: UILabel!
    @IBOutlet weak var eFactor: UILabel!
    @IBOutlet weak var question: UIButton!
    @IBOutlet var assesmentButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        deck = Deck()
        deck?.add(card: Card(question: "napkin", answer: "-e Serviette"))
        deck?.add(card: Card(question: "food", answer: "-s Essen"))
        deck?.add(card: Card(question: "phone", answer: "-s Handy"))
        deck?.add(card: Card(question: "flower", answer: "-e Blume"))
        deck?.add(card: Card(question: "hill", answer: "-r Hügel"))
        
        //autoLoop()
    }
    
    func autoLoop() {
        for i in 1...100 {
            if let c = deck?.draw() {
                let assesment = Double(arc4random_uniform(5)) // * 0.5
                log(c)
                c.update(with: assesment)
                print("\(i) \t assesment = \(assesment)")
                log(c)
                deck?.add(card: c)
                print("=== end ===\n\n")
            } else {
                print("Deck empty!")
                break
            }
        }
        
        print("=== showing deck ===")
        while let c = deck?.draw() {
            log(c)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        card = deck?.draw()
        displayCard(card!)
    }
    
    func log(_ c: Card) {
        print("q = \(c.question) a = \(c.answer) r = \(c.repetition) e = \(c.eFactor) day = \(c.repetitionInterval()) will repeatOn = \(c.repeatOn)")
    }
    
    func displayCard(_ card:Card) {
        question.setTitle(card.question, for: .normal)
        repeatOn.text = "repeatOn: \(card.repeatOn)"
        eFactor.text = "eFactor: \(card.eFactor)"
        hideButtons(true)
    }

    func hideButtons(_ value:Bool) {
        for a in assesmentButtons {
            a.isHidden = value
        }
    }
    
    @IBAction func flipCard(_ sender: Any) {
        if let sender = sender as? UIButton {
            if (card?.question == sender.title(for: .normal)) {
                sender.setTitle(card?.answer, for: .normal)
                hideButtons(false)
            } else {
                sender.setTitle(card?.question, for: .normal)
                hideButtons(true)
            }
           
        }
    }
    
    @IBAction func assesment(_ sender: Any) {
        print("Touch up inside!")
        if let sender = sender as? UIButton {
            let assesment = Double(sender.title(for: .normal)!)
            card?.update(with: assesment!)
            deck?.add(card: card!)
            card = deck?.draw()
            displayCard(card!)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

