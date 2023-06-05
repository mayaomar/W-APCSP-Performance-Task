//
//  ResultsView.swift
//  W APCSP Performance Task
//
//  Created by Maya Omar24 on 4/24/23.
//

import SwiftUI


func experiencedRecipes() {
    print ("Hello")
}

struct ResultsView: View {
    var body: some View {
        VStack {
            VStack (spacing:40) {
                VStack (spacing:20) {
                    Text("Congratulations, you have finished our quiz!")
                        .brownTitle()
                        .multilineTextAlignment(.center)
                    
                    Text("If you selected \"Applicable\" for 3+ of the questions then you are categorized in the more experienced category! If you have selected \"Non-applicable\" for 3+ of the questions, then you are categorized in the less experienced category! Click continue to see the recipe paired with your skill level.")
                        .foregroundColor(Color("AccentColor"))
                        .padding(30)
                    
                    
                    
                    
                    
                
                     
                }
                
                NavigationLink(destination: TriviaView().returnToView(view: ResultsView())) {
                    PrimaryButton(text: "Continue")
                }
                
                
            
                
    
            }
            
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color(red:0.984313745290196, green: 0.92941176470588324, blue: 0.8470588235294118))
        }
    }
    
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView()
    }
}

extension View {
    func returnToView<Content: View>(view: Content) -> some View {
        return NavigationView { view }
    }
}
