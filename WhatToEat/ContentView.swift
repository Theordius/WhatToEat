//
//  ContentView.swift
//  WhatToEat
//
//  Created by Rafał Gęsior on 21/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var brandLogo = 1
   
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Image("app_logo")
                Spacer()
                HStack {
                    DiceView(n: brandLogo)
                    
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.brandLogo = Int.random(in: 1...6)
                   
                }) {
                    Text("What we gonna eat?")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.green)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("logo_\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
