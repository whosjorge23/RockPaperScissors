//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Jorge Giannotta on 05/05/21.
//

import SwiftUI

struct ContentView: View {
    let choicesArray = ["👊","🖐","✌️"]
    @State var computerChoice = "?"
    @State var result = ""
    @State var computerPoints = 0
    @State var yourPoints = 0
    @State private var showingAlert = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            Text("Rock Paper Scissors")
                .foregroundColor(.black).opacity(0.5)
                .font(.largeTitle)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding(.bottom,50)
//            Text(result)
//                .padding(.bottom,100)
            Text("CPU Choice")
                .font(.title2)
                .foregroundColor(.red)
                .padding(.bottom,50)
            Text(computerChoice)
                .font(.system(size: 80))
                .padding(.bottom,50)
            
            Divider().frame(height: 5).background(Color.black).opacity(0.5)
            
            HStack(alignment: .center, spacing: 50, content: {
                Button(action: {
                    self.computerChoice = choicesArray.randomElement()!
                    
                    if computerChoice == "✌️"{
                        result = "You Win!"
                        yourPoints += 1
                    }else if computerChoice == "🖐"{
                        result = "You Lose"
                        computerPoints += 1
                    }else {
                        result = "It's a Draw"
                    }
                    showingAlert = true
                }, label: {
                    Text("👊")
                        .font(.system(size: 80))
                })
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Result"), message: Text(result), dismissButton: .default(Text("Got it!")){
                        self.computerChoice = "?"
                    })
                }
                Button(action: {
                    self.computerChoice = choicesArray.randomElement()!
                    
                    if computerChoice == "👊"{
                        result = "You Win!"
                        yourPoints += 1
                    }else if computerChoice == "✌️"{
                        result = "You Lose"
                        computerPoints += 1
                    }else {
                        result = "It's a Draw"
                    }
                    showingAlert = true
                }, label: {
                    Text("🖐")
                        .font(.system(size: 80))
                })
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Result"), message: Text(result), dismissButton: .default(Text("Got it!")){
                        self.computerChoice = "?"
                    })
                }
                Button(action: {
                    self.computerChoice = choicesArray.randomElement()!
                    
                    if computerChoice == "🖐"{
                        result = "You Win!"
                        yourPoints += 1
                    }else if computerChoice == "👊"{
                        result = "You Lose"
                        computerPoints += 1
                    }else {
                        result = "It's a Draw"
                    }
                    showingAlert = true
                }, label: {
                    Text("✌️")
                        .font(.system(size: 80))
                })
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Result"), message: Text(result), dismissButton: .default(Text("Got it!")){
                        self.computerChoice = "?"
                    })
                }
                
            })
            .padding(.top,50)
            
            Text("Your Choice")
                .font(.title2)
                .foregroundColor(.purple)
                .padding(.top,50)
            
            Spacer()
            HStack(alignment: .center, spacing: nil, content: {
                Text("CPU Points: \(computerPoints)").foregroundColor(.red).padding(.trailing,10)
                Divider().frame(width: 3, height: 30).background(Color.black).opacity(0.5)
                Text("Your Points: \(yourPoints)").foregroundColor(.purple).padding(.leading,10)
            })
            .padding(.bottom, 50)
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
