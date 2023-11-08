//
//  SecondViewController.swift
//  Questions App
//
//  Created by Irene Liao on 4/26/23.
//

import SwiftUI

struct SecondViewController: View {
    @State private var img = "";
    
    var body: some View {
        VStack {
            //title
            Text("Choose something to brighten your day!")
                .font(.title)
                .padding(.bottom, 10.0)
                .multilineTextAlignment(.center)
            
            //first button
            Button(" Positive Affirmation 💖 ") {
                self.img = "affirmation";
            }
                .buttonStyle(.bordered)
                .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
                .tint(.pink)
                .padding(5.0)
            
            //second button
            Button(" Cuties 🦦 ") {
                self.img = "cuties"
            }
                .buttonStyle(.bordered)
                .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
                .tint(.purple)
                .padding(5.0)
            
            //third button
            Button(" Quote of the Day 💬 ") {
                self.img = "quote"
            }
                .buttonStyle(.bordered)
                .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
                .tint(.blue)
                .padding(5.0)
            
            Image(img)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(10.0)
        }
        .padding()
    }
}

struct SecondViewController_Previews: PreviewProvider {
    static var previews: some View {
        SecondViewController()
    }
}
