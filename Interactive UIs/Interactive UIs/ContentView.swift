//
//  ContentView.swift
//  Interactive UIs
//
//  Created by Irene Liao on 4/16/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = "";
    @State private var age = "";
    @State private var titleText = "Congratulator!";
    
    var body: some View {
        VStack(spacing: 100) {
            Text(titleText)
                .font(.title)
            
            TextField("Type name...", text: $name)
                .font(.title2)
                .multilineTextAlignment(.center)
                .border(Color.gray, width: 1)
            
            TextField("Type age...", text: $age)
                .font(.title2)
                .multilineTextAlignment(.center)
                .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
            Button("Submit Information") {
                titleText = "Congratulations on turning \(age), \(name)!"
            }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.purple)
        }
        
        .padding()
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
