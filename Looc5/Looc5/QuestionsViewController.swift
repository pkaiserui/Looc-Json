//
//  QuestionsViewController.swift
//  Looc5
//
//  Created by PK on 3/24/15.
//  Copyright (c) 2015 PK. All rights reserved.
//

import UIKit

// This is my edit


class QuestionViewController : UIViewController {
    
    // Time Label
    @IBOutlet weak var time: UILabel!
    // Score label
    @IBOutlet weak var score: UILabel!
    // Question label
    @IBOutlet weak var questionText: UILabel!
    // Answer 1 label
    @IBOutlet weak var answerOneText: UIButton!
    // answer 2 label
    @IBOutlet weak var answerTwoText: UIButton!
    // answer 3 label
    @IBOutlet weak var answerThreeText: UIButton!
    // answer 4 label
    @IBOutlet weak var answerFourText: UIButton!
    // answer 5 label
    @IBOutlet weak var answerFiveText: UIButton!
    
    
    /* Random Question Select
    var myArray = [1,2,3,4,5,6]
    
    var countArray = UInt32(myArray.count)
    
    let diceRoll = (arc4random_uniform(countArray)+1)
    */
    
    
    
    // Answer 1 Button
    @IBAction func answerOneButton(sender: UIButton) {
        answerOneText.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        
        answerOneText.setTitle("hello", forState: nil)
        
        
         //var question1 = ImageQuestionAnswer(Q: Q)
        
         //questionText.text = "\(question1)"
        
        /*
        //NSDictionary *section1 = [sectionDictionary objectForKey:@"Section1"];
        
        // Overall Array Item
        var item = questionRosterArray[0] as Dictionary<String, AnyObject>
        
        // Picture Name
        var picturename = item["PictureName"] as String
        
        // Image URL
        //var imageURL = item["Picture URL"] as String
        
        // Question add \(#) in place of Question - #
        var question = (item["Question - 1"] as Dictionary<String, AnyObject>)
        // String for the Question
        var Q = question["Q"] as String
        // String for 1 - 6 Answers
        var A = question["A"] as Array<String>
        // String for Answer1
        var answer1 = A[0]
        // Text for Question
        questionText.text = "\(answer1)"
        
        //questionText.text = String(questionRosterArray[0]["Q"] )
        */
      
    }
    
    // Answer 2 button
    @IBAction func answerTwoButton(sender: UIButton) {
        answerTwoText.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        
    }
    
    // Answer 3 button
    @IBAction func answerThreeButton(sender: UIButton) {
        answerThreeText.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        var bonustime = time.text!.toInt()
        var result = 1000 + (10 * Int(bonustime!))
        score.text = "\(result)"
        timer.invalidate()
        
    }
    // Answer 4 button
    @IBAction func answerFourButton(sender: UIButton) {
        answerFourText.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        
        
        
    }
    // Answer 5 button
    @IBAction func answerFiveButton(sender: UIButton) {
        answerFiveText.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        
        
        
    }
    
    
    
    // Timer stuff
    var timer = NSTimer()
    var count = 18
    func result() {
        count = count - 1
        time.text = "\(count)"
        if count <= 0 {
            timer.invalidate()
            //count = 10
            //time.text = "10"
            }
    }
    
    
    // Start timer load data
     override func viewDidLoad() {
        super.viewDidLoad()
        var a =  ModelController.sharedInstance.modelArray[0]
        var answer = a.secondLevel?.data
        
        var question = a.secondLevel?.name
        
        
       
        questionText.text = "\(answer)"
    
    
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        
    }
    
    
}
