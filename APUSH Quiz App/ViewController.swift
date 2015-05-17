//
//  ViewController.swift
//  APUSH Quiz App
//
//  Created by Rolando Cruz on 5/16/15.
//  Copyright (c) 2015 Rolando Cruz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var QuestionLabel: UILabel!
    
    
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    
    @IBOutlet weak var correctOrWrong: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    var correctAnswer = String()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomQuestions()
        hideLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func randomQuestions(){
        var randomNumber = arc4random() % 4
        randomNumber += 1
        
        switch(randomNumber) {
            
        case 1:
            
            QuestionLabel.text = "What language can be used to make iOS apps?"
            Button1.setTitle("Python", forState: UIControlState.Normal)
            Button2.setTitle("Swift", forState: UIControlState.Normal)
            Button3.setTitle("Java", forState: UIControlState.Normal)
            Button4.setTitle("Javascript", forState: UIControlState.Normal)
            correctAnswer = "2"
            
            break
        case 2:
            
            QuestionLabel.text = "Who is Mark Zuckerberg?"
            Button1.setTitle("The president of the United States of America", forState: UIControlState.Normal)
            Button2.setTitle("The CEO of Apple", forState: UIControlState.Normal)
            Button3.setTitle("The Dean of Harvard", forState: UIControlState.Normal)
            Button4.setTitle("The CEO and Founder of Facebook", forState: UIControlState.Normal)
            correctAnswer = "4"

            
            
            break
            
        case 3:
            QuestionLabel.text = "What is 9 plus 10?"
            Button1.setTitle("21", forState: UIControlState.Normal)
            Button2.setTitle("18", forState: UIControlState.Normal)
            Button3.setTitle("19", forState: UIControlState.Normal)
            Button4.setTitle("910", forState: UIControlState.Normal)
            correctAnswer = "3"

            break
            
        case 4:
            QuestionLabel.text = "What does HTML stand for?"
        
            Button1.setTitle("Hypertext Markup Language", forState: UIControlState.Normal)
            Button2.setTitle("Hype the moo loud ", forState: UIControlState.Normal)
            Button3.setTitle("how that makes languages", forState: UIControlState.Normal)
            Button4.setTitle("how to make licorice", forState: UIControlState.Normal)
            correctAnswer = "1"

            break
            
            
            
        default:
            
            break
            
            
            
        }
        
    }
    
    
    func hideLabel() {
        correctOrWrong.hidden = true
        nextButton.hidden = true
        
    }
    
    func unhideLabel() {
        correctOrWrong.hidden = false
        nextButton.hidden = false
    }
    
    func hideNextQuestion() {
        nextButton.hidden = true
    }
    
    @IBAction func Button1Action(sender: AnyObject) {
        unhideLabel()
        if(correctAnswer == "1") {
            correctOrWrong.text = "You are correct!"
        }
        else {
            correctOrWrong.text = "Incorrect, try again!"
            hideNextQuestion()

        }

    }
    
    
    
   
    
    @IBAction func Button2Action(sender: AnyObject) {
        unhideLabel()
        if (correctAnswer == "2") {
            correctOrWrong.text = "You are correct!"
    }
        else {
            correctOrWrong.text = "Incorrect, try again!"
            hideNextQuestion()

        }
    }
    
    @IBAction func Button3Action(sender: AnyObject) {
        unhideLabel()
        if (correctAnswer == "3") {
            correctOrWrong.text = "You are correct!"
    }
        else {
            correctOrWrong.text = "Incorrect, try again!"
            hideNextQuestion()

        }
    }

    @IBAction func Button4Action(sender: AnyObject) {
        unhideLabel()
        if (correctAnswer == "4") {
            correctOrWrong.text = "You are correct!"
    }
        else {
            correctOrWrong.text = "Incorrect, try again!"
            hideNextQuestion()
            
        }
    }
    
    
    @IBAction func nextQuestion(sender: AnyObject) {
        randomQuestions()
        
        hideLabel()
        
    }
    
    
    
    
    
}

