//
//  QuestionView5.swift
//  W APCSP Performance Task
//
//  Created by Maya Omar24 on 4/24/23.
//

import SwiftUI

struct QuestionView5: View {
    var body: some View {
        VStack (spacing:40) {
            HStack {
                Text("Cooking Skills Questionnaire")
                    .brownTitle()
                    Spacer()
                        
                    Text("5 out of 5")
                        .foregroundColor(Color("AccentColor"))
                        .fontWeight(.heavy)
            }
            ProgressBar(progress:300)
            
            VStack (alignment: .leading, spacing:20 ){
                Text("I have been cooking for most of my life")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                    
                AnswerRow(answer: Answer(text: "Applicable", isCorrect: true))
                AnswerRow(answer: Answer(text: "Non-applicable", isCorrect: true))
            }
                
            NavigationLink {
                ResultsView()
            } label: {
                PrimaryButton(text: "Continue")
            }
                
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red:0.984313745290196, green: 0.92941176470588324, blue: 0.8470588235294118))
    }
}

    struct QuestionView5_Previews: PreviewProvider {
        static var previews: some View {
            QuestionView()
        }
    }
