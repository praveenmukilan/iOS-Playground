//
//  ViewController.swift
//  Quiz
//
//  Created by praveen ms on 8/24/17.
//  Copyright © 2017 praveenms. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel : UILabel!
    
    var currentQuestionIndex: Int = -1
    
    let questions : [String] = ["what is your pet name?", "whats your favourite movie?","whats your fav game?"]
    let answers: [String] = ["chinese","inception","cricket"]
    
    
    @IBAction func showNextQuestion(sender : AnyObject) {
        currentQuestionIndex+=1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        questionLabel.text = questions[currentQuestionIndex]
        answerLabel.text = "??"
    }
    
    @IBAction func showAnswer(sender : AnyObject) {
        answerLabel.text = answers[currentQuestionIndex]
        
    }
}

