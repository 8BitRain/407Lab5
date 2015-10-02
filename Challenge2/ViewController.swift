//
//  ViewController.swift
//  Challenge2
//
//  Created by Eric Smith on 9/25/15.
//  Copyright © 2015 Eric Smith. All rights reserved.
//

import UIKit

var questionOneUserText : String!
var correctAnswer : String!
let questionChecker = QuestionModel()

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var updateText: UILabel!
    @IBOutlet weak var userAnswer: UITextField!
    @IBAction func submitAnswer(sender: AnyObject) {
        //let questionChecker = QuestionModel()
        questionChecker.setUserAnswerOne(userAnswer.text!)
        print(questionChecker.getUserAnswer(1))
        
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowQuestionTwoSegue"
        {
            let destinationVC = segue.destinationViewController as? Question2Controller
            destinationVC!.database = questionChecker
            
            
        }
    }

}

