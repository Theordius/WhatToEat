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
//            Image("background")
//                .resizable()
//                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(spacing: 50.0) {
                Image("app_logo")
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100, alignment: .top)
                
                Spacer()
                
                HStack {
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
            
                BrandView(n: brandLogo)
                    .padding(.horizontal)
                
                
            }
        }
        .padding(.all)
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
           
            .renderingMode(.none)
            .resizable()
            .aspectRatio(1, contentMode: .fill)
            .aspectRatio(contentMode: .fit)
            .padding()
            .frame(width: 125.0, height: 125.0)
    }
}
