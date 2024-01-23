//
//  Keyboard.swift
//  Edutainment
//
//  Created by Elias Breitenbach on 06.07.23.
//

import SwiftUI

struct TastaturView: View {
    
    @State private var tastatur = [
        ["7", "8", "9"],
        ["4", "5", "6"],
        ["1", "2", "3"],
        ["0"]
    ]
    
    var body: some View {
        VStack(spacing: 10) {
            ForEach(tastatur, id: \.self) { row in
                HStack(spacing: 10) {
                    ForEach(row, id: \.self) { buttonTitle in
                        Button(action: {
                            // Handle button tap here
                            buttonTapped(buttonTitle) { tappedTitle in
                            }
                        }, label: {
                            Text(buttonTitle)
                                .font(.title)
                                .frame(width: 120, height: 50)
                                .background(Color(red: 0.2, green: 0.2, blue: 0.2))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .shadow(color: .black, radius: 3)
                        })
                    }
                }
            }
        }
        .padding()
    }
    
    func buttonTapped(_ title: String, completion: @escaping (String) -> Void) {
        // Handle button tap action here
        print("Button tapped: \(title)")
    }
}

struct TastaturView_Preview: PreviewProvider {
    static var previews: some View {
        TastaturView()
    }
}

struct ContentView_Previews2: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
