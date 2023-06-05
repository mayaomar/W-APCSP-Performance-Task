//
//  RecipeView.swift
//  W APCSP Performance Task
//
//

import SwiftUI



struct RecipeView: View {
    
    @ObservedObject var manager: Manager
    @State var recipeList: [RecipeData]
    
    let beginnerRec: [String] = ["Pizza, Roast chicken, Spaghetti carbonara, Apple Pie "]
    let advancedRec: [String] = ["Beef Wellington, Lobster Bisque, Chicken Cordon Bleu, Coq au Vin, Beef Bourguignon"]
    var skillLevelList: [Bool] = []
    
    var body: some View {
        //Spacer()
        VStack(spacing: 0) {
            Spacer().frame(height: 100)
            Text("Thank you for taking the questionnaire! Below are recipes catered to your skill level! Keep reading to see a list of viable recipe options!")
                .multilineTextAlignment(.center)
                .bold()
                .padding(.vertical, 20)
                .padding(.horizontal, 16)
                .background(Color(red: 0.8157, green: 0.7882, blue: 0.7529)) // Set top color
                .foregroundColor(Color(red: 0.22, green: 0.31, blue: 0.27))
            
            List {
                ForEach(0..<recipeList.count, id: \.self) { index in
                    Text(recipeList[index].recipeName + ": ")
                        .foregroundColor(Color(red: 0.22, green: 0.31, blue: 0.27))
                        .bold()
                        +
                        Text(recipeList[index].ingredients.joined(separator: ", "))
                            .foregroundColor(Color(red: 0.22, green: 0.31, blue: 0.27))
                }
                .listRowBackground(Color(red: 0.93, green: 0.89, blue: 0.88))
            }
            .background(Color.clear)
            .scrollContentBackground(.hidden)
            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)

        }
        .background(Color(red: 0.8157, green: 0.7882, blue: 0.7529))
        .ignoresSafeArea()
    }
}
