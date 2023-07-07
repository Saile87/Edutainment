//
//  Keyboard.swift
//  Edutainment
//
//  Created by Elias Breitenbach on 06.07.23.
//

import SwiftUI

struct numberPadView: View {
    let buttons = [
        ["7", "8", "9"],
        ["4", "5", "6"],
        ["1", "2", "3"],
        ["", "0", ""]
    ]
    
    var body: some View {
        VStack(spacing: 10) {
            ForEach(buttons, id: \.self) { row in
                HStack(spacing: 10) {
                    ForEach(row, id: \.self) { buttonTitle in
                        Button(action: {
                            // Handle button tap here
                            buttonTapped(buttonTitle) { tappedTitle in
                            }
                        }, label: {
                            Text(buttonTitle)
                                .font(.title)
                                .frame(width: 80, height: 80)
                                .background(Color.gray)
                                .foregroundColor(.white)
                                .cornerRadius(40)
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

struct numberPadView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
