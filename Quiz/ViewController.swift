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
    let questions: [String] = ["What's the capital of America?", "What's 167 x 4?","Who's elected as 45th president of the United States of America?"]
    let answers: [String] =  ["Washington DC","","Donald Trump"]
    
    var currentQuestionIndex: Int = 0;
    

    
    override func viewDidLoad(){
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }



}

