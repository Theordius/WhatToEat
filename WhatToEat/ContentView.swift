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
                .edgesIgnoringSafeArea(.all)
            Spacer()
            
            VStack{
                Image("app_logo")
                Spacer()
                
                VStack {
                    Button(action: {
                        self.brandLogo = Int.random(in: 1...6)
                    }) {
                        Text("LOSUJ ŻARCIE")
                            .font(.system(size: 50))
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                            .background(Color.green)
                        
                    }
                    BrandView(n: brandLogo)
                    .padding(.horizontal)
                    Spacer()
                  
                }
                .padding(.vertical)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}

struct BrandView: View {
    
    let n: Int
    
    var body: some View {
        Image("logo_\(n)")
        
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
            .frame(width: 150.0, height: 150.0)
    }
}
