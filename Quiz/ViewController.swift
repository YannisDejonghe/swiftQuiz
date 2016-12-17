//
//  ViewController.swift
//  Quiz
//
//  Created by Yannis Dejonghe on 17/12/2016.
//  Copyright © 2016 UltraDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    @IBAction func showNextQuestion(sender: AnyObject){
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
    }
    
    @IBAction func showAnswer(sender: AnyObject){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer;
    }
    
    let questions: [String] = ["From what is cognac made?", "What is 7+7?","What is the capital of Vermont?"]
    let answers: [String] =  ["Grapes","14","Monpelier"]
    
    var currentQuestionIndex: Int = 0;
    

    
    override func viewDidLoad(){
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }



}

