//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Robin He on 9/26/18.
//  Copyright © 2018 Robin He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var answerPicIndex:Int=0
    let picArray=["ball1","ball2","ball3","ball4","ball5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        updatedAnswer()
    }

    @IBOutlet weak var AnswerPic: UIImageView!
    @IBAction func askAQuestion(_ sender: UIButton) {
        updatedAnswer()
        
    }
    func updatedAnswer(){
        answerPicIndex=Int(arc4random_uniform(5))
        AnswerPic.image=UIImage(named: picArray[answerPicIndex])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updatedAnswer()
    }
    
}

