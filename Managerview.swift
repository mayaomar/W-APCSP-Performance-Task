//
//  FunctionView.swift
//  W APCSP Performance Task
//
//

import Foundation

import SwiftUI

// Helped by a peer

class Manager: ObservableObject{
    let beginnerRecipes: [RecipeData] = [
    RecipeData(recipeName: "Pizza", ingredients: ["Flour", "cheese", "onion", "tomato sauce", "yeast"]),
    RecipeData(recipeName: "Roast chicken", ingredients: ["Chicken", "salt", "pepper", "butter", "onion", "carrots", "olive oil"]),
    RecipeData(recipeName: "Spaghetti carbonara", ingredients: ["Spaghetti", "salt", "eggs", "parmesan", "black pepper", "olive oil"]),
    RecipeData(recipeName: "Apple Pie", ingredients: ["Apples", "sugar", "cinnamon", "lemon", "egg"])
    
    
    ]
    let advancedRecipes: [RecipeData] = [
    RecipeData(recipeName: "Beef Wellington", ingredients: ["Beef tenderloin", "black pepper", "dijon mustard", "mushrooms", "butter", "egg"]),
    RecipeData(recipeName: "Lobster Bisque", ingredients: ["Lobster", "butter", "olive oil", "carrots", "onion", "celery", "salt", "pepper", "garlic", "flour", "tomato paste", "heavy cream", "cayenne pepper"]),
    RecipeData(recipeName: "Chicken Cordon Bleu", ingredients: ["Ham", "cheese", "chicken", "cereal", "butter", "mayyonnaise", "yellow mustard"]),
    RecipeData(recipeName: "Coq au Vin", ingredients: ["Olive oil", "pancetta", "pepper", "onion", "garlic", "chicken", "butter flour"]),
    RecipeData(recipeName: "Beef Bourguignon", ingredients: ["Brisket", "oninion", "carrots", "parsley", "flour", "butter", "mushrooms", "oil"])
    ]
    
    
    // return a bool
    func chefLevel(abilityList: [Bool]) -> [RecipeData] {
        let maxValueList = abilityList.count-1
        
        var chefAblityLevel = 0
        
        for i in 0...maxValueList{
            if abilityList[i] == true {
                chefAblityLevel += 1
            }
        }
        
        if chefAblityLevel >= 3 {
            return advancedRecipes
        }
        else{
            return beginnerRecipes
            
        }
    }
}
