//
//  Question2Controller.swift
//  Challenge2
//
//  Created by Eric Smith on 9/28/15.
//  Copyright © 2015 Eric Smith. All rights reserved.
//

//
//  ViewController.swift
//  Challenge2
//
//  Created by Eric Smith on 9/25/15.
//  Copyright © 2015 Eric Smith. All rights reserved.
//

import UIKit



class Question2Controller: UIViewController {
    var userAnswer : String!
    var userStory = ""
    var database : QuestionModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //secondQuestionText.text = userStory
        print(database?.getUserAnswer(1))
    }
    @IBOutlet weak var userAnswerTwo: UITextField!
    
    @IBAction func submitQuestionTwo(sender: AnyObject) {
        database?.setUserAnswerTwo(userAnswerTwo.text!)
    }
    @IBOutlet weak var secondQuestionText: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SummaryPageSegue"
        {
            let destinationVC = segue.destinationViewController as? SummaryViewController
            destinationVC?.database = database
            
        }
    }
    
    

    
}

