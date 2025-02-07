//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionLabel.text = quizBrain.quiz[quizBrain.questionNumber].question
        progressBar.progress = 0.0
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userIsCorrect = quizBrain.checkAnswer(sender)
        sender.backgroundColor = userIsCorrect ? UIColor.green : UIColor.red
        Timer.scheduledTimer(withTimeInterval: 0.7, repeats: false) { _ in
            self.updateUI(sender)
        }
        quizBrain.nextQuestion()
        
    }
    
    
    func updateUI(_ sender: UIButton) {
        questionLabel.text = quizBrain.getCurrentQuestion()
        sender.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgressBarProgress()
    }
}

