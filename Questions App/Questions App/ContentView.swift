//
//  ContentView.swift
//  Questions App
//
//  Created by Irene Liao on 4/25/23.
//

import SwiftUI

struct ContentView: View {
    @State private var txt = ""; //state a new private var here so in your case it would be an empty image 
    
    var body: some View {
        NavigationStack {
            VStack {
                //title
                Text("How are you doing today?")
                    .font(.title)
                    .padding(.bottom, 10.0)
                
                //first button
                Button(" Fantastic 🕺 ") {
                    self.txt = "I'm so glad to hear that!"
                }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
                    .tint(.green)
                    .padding(5.0)
                
                //second button
                Button(" Could be better 🤠 ") {
                    self.txt = "The day is not over yet! I hope things are looking up for you soon!"
                }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
                    .tint(.orange)
                    .padding(5.0)
                
                //third button
                Button(" Not so great 🤕 ") {
                    self.txt = "We all have our rough days. Life is about ups and downs and remember that after a down phase, there are ups! Let's look forward to seeing those ups!"
                }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
                    .tint(.red)
                    .padding(5.0)
            }
            .padding()
            
            Text(txt)
                .padding(10.0)
                .padding(.horizontal, 20.0)
                .multilineTextAlignment(.center)
            
            NavigationLink(destination: SecondViewController()) {
                Text("Next Question")
                    .padding(.top, 25.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
