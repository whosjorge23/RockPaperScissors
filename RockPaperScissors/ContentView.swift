//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Jorge Giannotta on 05/05/21.
//

import SwiftUI

struct ContentView: View {
    let choicesArray = ["👊","🖐","✌️"]
    @State var computerChoice = "✌️"
    @State var result = ""
    @State private var showingAlert = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            Text("Rock Paper Scissors")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding(.bottom,50)
//            Text(result)
//                .padding(.bottom,100)
            Text("Computer Choice")
                .font(.title2)
                .foregroundColor(.red)
                .padding(.bottom,50)
            Text(computerChoice)
                .font(.system(size: 80))
                .padding(.bottom,50)
            
            Divider().frame(height: 5).background(Color.gray)
            
            HStack(alignment: .center, spacing: 50, content: {
                Button(action: {
                    self.computerChoice = choicesArray.randomElement()!
                    
                    if computerChoice == "✌️"{
                        result = "You Win!"
                    }else if computerChoice == "🖐"{
                        result = "You Lose"
                    }else {
                        result = "It's a Draw"
                    }
                    showingAlert = true
                }, label: {
                    Text("👊")
                        .font(.system(size: 80))
                })
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Result"), message: Text(result), dismissButton: .default(Text("Got it!")))
                }
                Button(action: {
                    self.computerChoice = choicesArray.randomElement()!
                    
                    if computerChoice == "👊"{
                        result = "You Win!"
                    }else if computerChoice == "✌️"{
                        result = "You Lose"
                    }else {
                        result = "It's a Draw"
                    }
                    showingAlert = true
                }, label: {
                    Text("🖐")
                        .font(.system(size: 80))
                })
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Result"), message: Text(result), dismissButton: .default(Text("Got it!")))
                }
                Button(action: {
                    self.computerChoice = choicesArray.randomElement()!
                    
                    if computerChoice == "🖐"{
                        result = "You Win!"
                    }else if computerChoice == "👊"{
                        result = "You Lose"
                    }else {
                        result = "It's a Draw"
                    }
                    showingAlert = true
                }, label: {
                    Text("✌️")
                        .font(.system(size: 80))
                })
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Result"), message: Text(result), dismissButton: .default(Text("Got it!")))
                }
                
            })
            .padding(.top,50)
            
            Text("Your Choice")
                .font(.title2)
                .foregroundColor(.purple)
                .padding(.top,50)
            Spacer()
        })
        .background(Color(UIColor.yellow).opacity(0.2))
        .edgesIgnoringSafeArea(.all)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
