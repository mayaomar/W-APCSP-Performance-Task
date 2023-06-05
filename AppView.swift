//
//  AppView.swift
//  W APCSP Performance Task
//
//
// Helped by a peer
import SwiftUI




    struct AppView: View {
        @State var skillLevelList: [Bool] = [false, false, false, false, false]
        @StateObject var manager = Manager()

        let questionList: [String] = [
            "I am extremely interested in wanting to keep growing my cooking skills.",
            "I would consider myself a good chef/baker.",
            "I like making more complex food items.",
            "I have been cooking for most of my life.",
            "I think cooking is fun."
        ]

        var body: some View {
            NavigationView {
                VStack {
                    Text("Answer the questions below by toggling the responses, then click the bottom of the screen to view possible recipes!")
                        .foregroundColor(Color(red: 0.22, green: 0.31, blue: 0.27))
                        .bold()
                        .padding(20)
                        .multilineTextAlignment(.center)
                        //backgroundcolor
                        .background(Color(red: 0.8157, green: 0.7882, blue: 0.7529))
                    
                    VStack {
                        List {
                            ForEach(0..<skillLevelList.count, id: \.self) { index in
                                Text(questionList[index])
                                    .foregroundColor(Color(red: 0.22, green: 0.31, blue: 0.27))
                                    .bold()
                                Button {
                                    skillLevelList[index].toggle()
                                    
                                } label: {
                                    Text(skillLevelList[index] ? "Applicable" : "Not applicable")
                                        .foregroundColor(skillLevelList[index] ? .green : .pink)
                                        
                                        
                                }
                            }
                            .listRowBackground(Color(red: 0.93, green: 0.89, blue: 0.88))
                            
                            
                        }
                        .background(Color.clear)
                        .scrollContentBackground(.hidden)
                        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
                    
                        
                        NavigationLink(destination: RecipeView(manager: manager, recipeList: manager.chefLevel(abilityList: skillLevelList), skillLevelList: skillLevelList)) {
                            Text("Click on this to learn some recipes!")
                                .padding(80)
                                .foregroundColor(Color(red: 0.22, green: 0.31, blue: 0.27))
                                .bold()
                        }
                    }
                 
                    
                   
                     
                }
               //background color
                .background(Color(red: 0.8157, green: 0.7882, blue: 0.7529))
              
            }
        }
    }


    struct AppView_Previews: PreviewProvider {
        static var previews: some View {
            AppView()
        }
    }


