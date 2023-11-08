//
//  ContentView.swift
//  My First App
//
//  Created by Irene Liao on 4/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //vertical stack
        VStack {
            Text("Cute puppy!!")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color.purple)
            Image("puppy")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            
            Text("kitty!!")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color.purple)
            Image("kitty")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
            
            Button("Click me!") {
               buttonTapped()
            }
                .font(.title)
                .background(Color.blue)
                .cornerRadius(10)
                .foregroundColor(.white)
                .padding()
        
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
    func buttonTapped() {
        print("Button tapped!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
