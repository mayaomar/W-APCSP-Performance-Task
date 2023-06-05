//
//  RecipeView.swift
//  W APCSP Performance Task
//
//  Created by Maya Omar24 on 4/25/23.
//

import SwiftUI


struct RecipeView: View {
    @State var text: String = "test"
    func experiencedRecipes() -> Text {
        return Text("Below are the recipes that cater to your skill level")
            .font(.title)
        
    }
    
        
    
    var body: some View {
        VStack {
            experiencedRecipes()
            
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView()
    }
}
