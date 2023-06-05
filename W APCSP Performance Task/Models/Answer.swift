//
//  Answer.swift
//  W APCSP Performance Task
//
//  Created by Maya Omar24 on 4/24/23.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
