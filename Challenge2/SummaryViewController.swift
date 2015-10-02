//
//  SummaryViewController.swift
//  Challenge2
//
//  Created by Eric Smith on 9/30/15.
//  Copyright © 2015 Eric Smith. All rights reserved.
//


import UIKit



class SummaryViewController: UIViewController {
    var database : QuestionModel?
    
    @IBOutlet weak var correctAnswerTwo: UILabel!
    @IBOutlet weak var userAnswerTwo: UILabel!
    @IBOutlet weak var questionTwo: UILabel!
    @IBOutlet weak var questioneOne: UILabel!
    @IBOutlet weak var correctAnswerOne: UILabel!
    @IBOutlet weak var userAnswerOne: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //secondQuestionText.text = userStory
        userAnswerOne.text = "Your Answer: " + (database?.userAnswerOne)!
        userAnswerTwo.text = "Your Answer: " + (database?.userAnswerTwo)!
        correctAnswerOne.text = "Correct Answer: " + (database?.correctAnswerOne)!
        correctAnswerTwo.text = "Correct Answer: " + (database?.correctAnswerTwo)!
        
        
        var numCorrect = 0
        if((database?.checkAnswer(1, userAnswer: (database?.userAnswerOne)!)) != nil){
            numCorrect++;
        }
        if((database?.checkAnswer(2, userAnswer: (database?.userAnswerTwo)!)) != nil){
            numCorrect++;
        }
        
        answersCorrect.text = "Correct Answers: " + numCorrect.description + " / 2"
        
    }
    
    @IBOutlet weak var answersCorrect: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}

}


