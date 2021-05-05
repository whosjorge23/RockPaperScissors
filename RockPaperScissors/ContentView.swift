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
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            Text("Rock Paper Scissors")
                .font(.title)
                .padding(.bottom,150)
            Text("Computer Choice")
                .font(.title3)
                .padding(.bottom,50)
            Text(computerChoice)
                .font(.largeTitle)
                .padding(.bottom,50)
            
            Divider()
            
            HStack(alignment: .center, spacing: 120, content: {
                Button(action: {
                    self.computerChoice = choicesArray.randomElement()!
                    
                    if computerChoice == "✌️"{
                        result = "You Win!"
                    }else if computerChoice == "🖐"{
                        result = "You Lose"
                    }else {
                        result = "It's a Draw"
                    }
                }, label: {
                    Text("👊")
                        .font(.largeTitle)
                })
                Button(action: {
                    self.computerChoice = choicesArray.randomElement()!
                    
                    if computerChoice == "👊"{
                        result = "You Win!"
                    }else if computerChoice == "✌️"{
                        result = "You Lose"
                    }else {
                        result = "It's a Draw"
                    }
                }, label: {
                    Text("🖐")
                        .font(.largeTitle)
                })
                Button(action: {
                    self.computerChoice = choicesArray.randomElement()!
                    
                    if computerChoice == "🖐"{
                        result = "You Win!"
                    }else if computerChoice == "👊"{
                        result = "You Lose"
                    }else {
                        result = "It's a Draw"
                    }
                }, label: {
                    Text("✌️")
                        .font(.largeTitle)
                })
                
            })
            .padding(.top,50)
            
            Text("Your Choice")
                .font(.title3)
                .padding(.top,50)
            Spacer()
            Text(result)
            Spacer()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
