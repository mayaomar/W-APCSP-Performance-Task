//
//  ContentView.swift
//  W APCSP Performance Task
//
//  Created by Maya Omar24 on 4/24/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                VStack(spacing:40) {
                    VStack (spacing:20){
                        Text("Discover the range of your cooking expertise!")
                            .brownTitle()
                            .multilineTextAlignment(.center)
                        
                        Text("Click below to begin the quiz!")
                            .foregroundColor(Color("AccentColor"))
                        
                         
                    }
                    
                    NavigationLink{
                        TriviaView()
                    } label: {
                        PrimaryButton(text: "Continue")
                    }
                    
                    
                
                    
        
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
                .background(Color(red:0.984313745290196, green: 0.92941176470588324, blue: 0.8470588235294118))
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
