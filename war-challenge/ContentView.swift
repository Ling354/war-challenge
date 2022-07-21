//
//  ContentView.swift
//  war-challenge
//
//  Created by Jeff Lingley on 2022-01-29.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card6"
    @State private var playerScore = 0
    @State private var cpuCard = "card11"
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background").ignoresSafeArea()
            
            VStack {
                Spacer()
              Image("logo")
                Spacer()
                HStack {
                    Spacer()
                  Image(playerCard)
                    Spacer()
                  Image(cpuCard)
                    Spacer()
                }
              Spacer()
                Button {
                    
                    // Generating a random number for the cards
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + (String(playerRand))
                    cpuCard = "card" + (String(cpuRand))
                    
                    
                    if playerCard > cpuCard {
                    playerScore += 1
                    } else if cpuCard > playerCard {
                    cpuScore += 1
                    }
                    
                } label: {
                    Image("dealbutton")
                }

              
              Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text((String(cpuScore)))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
