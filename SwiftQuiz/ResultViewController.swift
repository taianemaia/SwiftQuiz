//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by user912249 on 10/6/18.
//  Copyright © 2018 Taiane Maia. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var lbAnswered: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnswers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbAnswered.text = "Perguntas respondidas: \(totalAnswers)"
        lbCorrect.text = "Perguntas corretas: \(totalCorrectAnswers)"
        lbWrong.text = "Perguntas erradas: \(totalAnswers - totalCorrectAnswers)"
        
        let score = totalCorrectAnswers * 100 / totalAnswers
        print(score)
        lbScore.text = "\(score)%"
    }

    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
