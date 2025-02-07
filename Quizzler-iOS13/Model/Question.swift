//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Henry Hogan on 30/12/2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let question : String
    let answer : String
    
    init(q: String, a: String) {
        self.question = q
        self.answer = a
    }
}
