//
//  ContentView.swift
//  Edutainment
//
//  Created by Elias Breitenbach on 20.06.23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numOne = Int.random(in: 0..<10)
    @State private var numTwo = Int.random(in: 0..<10)
    @State private var pair: Int = 0
    @State private var answer = ""
    @State private var result: Int = 0
    @State private var score = 0
    
    let multiplicationsRange = 1...10
    let keyboard = numberPadView()
    
    var body: some View {
        NavigationView {
            Section {
                ZStack {
                    Color(red: 0.2, green: 0.2, blue: 0.2)
                    VStack {
                        Text("\(numOne) x \(numTwo)")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .font(.largeTitle.bold())
                            .foregroundColor(.green)
                            .padding()
                        
                        VStack{
                            Text("Your Score: \(score)")
                                .padding()
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        
                        VStack {
                            TextField("Ergebnis:", text: $answer)
                                .keyboardType(.numberPad)
                                .padding()
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            
                            Spacer()
                        }
                    }
                }
                .ignoresSafeArea()
                .onSubmit(checkAnswer)
            }
        }
    }
    
    func checkAnswer() {
        guard let userAnswer = Int(answer) else { return }
        let correctAnswer = numOne * numTwo
        if userAnswer == correctAnswer {
            score += 1
            newGame()
        }
        answer = ""
    }
    
    func newGame() {
        answer.removeAll()
        numOne = multiplicationsRange.randomElement() ?? 1
        numTwo = multiplicationsRange.randomElement() ?? 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
