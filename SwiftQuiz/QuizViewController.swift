//
//  QuizViewController.swift
//  SwiftQuiz
//
//  Created by user912249 on 10/6/18.
//  Copyright © 2018 Taiane Maia. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
	
    
    @IBOutlet weak var viTimer: UIView!
    @IBOutlet weak var lbQuestion: UILabel!
    
    @IBOutlet var btAnswers: [UIButton]!
    
    let quizManager = QuizManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        viTimer.frame.size.width = view.frame.size.width
        UIView.animate(withDuration: 15.0, delay: 0.0, options: .curveLinear, animations: {
            self.viTimer.frame.size.width = 0
        }) {(success) in
                self.showResults()
        }
        
        getNewQuiz()
    }
    
    @IBAction func selectAnswer(_ sender: UIButton) {
        let index = btAnswers.index(of: sender)!
        quizManager.validateAnswer(index: index)
        
        getNewQuiz()
    }
    
    func showResults() {
        performSegue(withIdentifier: "resultSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! ResultViewController
        
        resultViewController.totalCorrectAnswers = quizManager.totalCorrectAnswers
        resultViewController.totalAnswers = quizManager.totalAnswers
    }
    
    func getNewQuiz() {
        quizManager.refreshQuiz()
        lbQuestion.text = quizManager.question
        
        for i in 0..<quizManager.options.count {
            let option = quizManager.options[i]
            btAnswers[i].setTitle(option, for: .normal)
        }
    }
    
}
