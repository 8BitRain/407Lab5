//
//  QuestionModel.swift
//  Challenge2
//
//  Created by Eric Smith on 9/28/15.
//  Copyright © 2015 Eric Smith. All rights reserved.
//

import Foundation
import UIKit

class QuestionModel{
    var userAnswerOne: String!
    var userAnswerTwo: String!
    var correctAnswerOne: String = "Cowboy Bebop"
    var correctAnswerTwo: String = "Sears Tower"

    init(){
        
    }
    
    func checkAnswer(questionNum: Int, userAnswer: String) -> Bool{
        
        if(questionNum == 1){
            if(userAnswer == correctAnswerOne || userAnswer == "cowboy bebop" || userAnswer == "Cowboy bebop"){
                return true;
            }else{
                return false;
            }
        }
        if(questionNum == 2){
            if(userAnswer == correctAnswerTwo || userAnswer == "sears tower" || userAnswer == "Sears tower"){
                return true;
            }else{
                return false;
            }
        }
        
        return false;
    }
    
    func setUserAnswerOne(userAnswer: String){
        self.userAnswerOne = userAnswer;
    }
    
    func setUserAnswerTwo(userAnswer: String){
        self.userAnswerTwo = userAnswer;
    }
    
    func getUserAnswer(questionNum: Int)-> String{
        if(questionNum == 1){
            return userAnswerOne;
        }
        if(questionNum == 2){
            return userAnswerTwo;
        }
        
        return "You shouldn't have got here"
    }
    
}