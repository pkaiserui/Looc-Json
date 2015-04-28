//
//  ImageViewController.swift
//  Looc5
//
//  Created by PK on 3/24/15.
//  Copyright (c) 2015 PK. All rights reserved.
//

import UIKit



class ImageViewController : UIViewController {
    //Label for timer
    @IBOutlet weak var time: UILabel!
    
    var timer = NSTimer()
    var count = 2
    func result() {
        count = count - 1
        time.text = "\(count)"
        if count <= 0 {
            // GO to next screen
            var questionVC = storyboard?.instantiateViewControllerWithIdentifier("QuestionViewController")
                as! QuestionViewController
            presentViewController(questionVC, animated: true, completion: nil)
            //Stops timer
            timer.invalidate()
        }
    }
    
    // Once view shwos start timer
    override func viewDidAppear(animated: Bool) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    
    
    
    
}
