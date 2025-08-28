//
//  ContentView.swift
//  Layouts
//
//  Created by Ron Lemire on 8/28/25.
//

import SwiftUI

// .border,.frame,.infinity,.minumumScaleFactor,.multiLineTextAlignment,.alignment,.spacing,Jump To Definition
struct ContentView: View {
    @State private var messageString = "When the Genius Bar Needs Help, They Call You!"
    
    var body: some View {
       VStack {
        //VStack(spacing: 0) { // removes space between Text and HStack
        //VStack(alignment: .leading) { // aligns views in VStack
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center) // align rows in Text view
                .foregroundStyle(.red)
                .padding()
                .frame(width: 300, height: 150) // constant size so buttons don't jump
                //.frame(height: 150)
                //.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/) // flexible width for smaller/larger devices
                .border(.orange, width: 2)

            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
