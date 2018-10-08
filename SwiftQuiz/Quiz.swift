//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by user912249 on 10/6/18.
//  Copyright © 2018 Taiane Maia. All rights reserved.
//

import Foundation

class Quiz {
    
    let question: String
    let options: [String]
    let correctedAnswer: String
    
    init(question: String, options: [String], correctedAnswer: String) {
        self.question = question
        self.options = options
        self.correctedAnswer = correctedAnswer
    }
    
    func validateOption(_ index: Int) -> Bool {
        let answer = options[index]
        return answer == correctedAnswer
    }
}
