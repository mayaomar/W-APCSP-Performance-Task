//
//  RecipieData.swift
//  W APCSP Performance Task
//
//  Created by Maya Omar24 on 5/16/23.
//

import Foundation

struct RecipeData: Identifiable, Hashable{
   let id = UUID()
    let recipeName: String
    let ingredients: [String]
}
