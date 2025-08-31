//
//  ContentView.swift
//  Layouts
//
//  Created by Ron Lemire on 8/28/25.
//

import SwiftUI

// Part 1 starting Point
struct ContentView: View {
    @State private var messageString = ""
    
    var body: some View {
        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .padding()
            
            // Buttons jump down when 1st button pressed. Corrected in ContentView1 with .frame modifier.
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

// .border,.frame,.infinity,.minumumScaleFactor,.multiLineTextAlignment,.alignment,.spacing,Jump To Definition
struct ContentView1: View {
    @State private var messageString = "When the Genius Bar Needs Help, They Call You!"
    
    var body: some View {
        VStack {
            //VStack(spacing: 0) { // removes space between Text and HStack
            //VStack(alignment: .leading) { // aligns views in VStack
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center) // align multiple rows in Text view
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

// Part 2 starting point
struct ContentView2: View {
    @State private var messageString = "When the Genius Bar Needs Help, They Call You!"
    
    var body: some View {
        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center) // align multiple rows in Text view
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/) // flexible width for smaller/larger devices
                .border(.orange, width: 2)
                .padding()
            
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

// Multiple Spacers that proportionally divided spaces
struct ContentView3: View {
    @State private var messageString = "When the Genius Bar Needs Help, They Call You!"
    
    var body: some View {
        VStack {
            // 1/4
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center) // align multiple rows in Text view
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/) // flexible width for smaller/larger devices
                .border(.orange, width: 2)
                .padding()
            
            // 3/4
            Spacer()
            Spacer()
            Spacer()
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                
                Spacer()
                
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .border(.purple, width: 5)
            .padding()
        }
        .padding()
    }
}

// Background bleeding into safe area
struct ContentView4: View {
    @State private var messageString = "When the Genius Bar Needs Help, They Call You!"
    
    var body: some View {
        VStack {
            // Example of Text bleeding into safe area
//            Text("You Have Skills!")
//                .font(.largeTitle)
//                .fontWeight(.black)
//                .foregroundStyle(.white)
//                .background(.purple)
            
            
            Text("You Have Skills!")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.white)
                .padding()
                .background(.purple)
            
                // bleeding solution 1 - padding modifier
                //.padding(1)
            
                // bleeding solution 2 - cornerRadius
                //.clipShape(RoundedRectangle(cornerRadius: 15))
                //.clipShape(RoundedRectangle(cornerRadius: 30))
                .clipShape(RoundedRectangle(cornerRadius: 0))
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center) // align multiple rows in Text view
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/) // flexible width for smaller/larger devices
                .border(.orange, width: 2)
                .padding()
            
            Spacer()
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                
                Spacer()
                
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .border(.purple, width: 5)
            .padding()
        }
    }
}

// Custom Colors:
// SkyBlue uses pencils then color wheel
// Vermillion uses 8-bit (0-255) RGB values
// maroon-BC and gold-BC use Color Eye Dropper
struct ContentView5: View {
    @State private var messageString = "When the Genius Bar Needs Help, They Call You!"
    
    var body: some View {
        VStack {
            Text("You Have Skills!")
                .font(.largeTitle)
                .fontWeight(.black)
                //.foregroundStyle(.white)
                .foregroundStyle(.goldBC)
                .padding()
                //.background(.skyBlue)
                //.background(Color("maroon-BC"))
                .background(.maroonBC)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center) // align multiple rows in Text view
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/) // flexible width for smaller/larger devices
                //.border(.orange, width: 2)
                .padding()
            
            Spacer()
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                
                Spacer()
                
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            //.border(.purple, width: 5)
            .padding()
            //.tint(.vermillion) // tint to change background color of interactive controls
        }
    }
}

// How to change full screen background color that ignores safe area.
struct ContentView6: View {
    @State private var messageString = "When the Genius Bar Needs Help, They Call You!"
    
    var body: some View {
        // Method 1 - ZStack
        /*
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            
            VStack {
                Text("You Have Skills!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundStyle(.goldBC)
                    .padding()
                    .background(.maroonBC)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                Spacer()
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center) // align multiple rows in Text view
                    .foregroundStyle(.red)
                    .frame(height: 150)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/) // flexible width for smaller/larger devices
                    .padding()
                
                Spacer()
                
                HStack {
                    Button("Awesome") {
                        messageString = "You Are Awesome!"
                    }
                    
                    Spacer()
                    
                    Button("Great") {
                        messageString = "You Are Great!"
                    }
                }
                .buttonStyle(.borderedProminent)
                .padding()
            }
        }
        */
        
        // Method 2 - VStack Background
        VStack {
            Text("You Have Skills!")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.goldBC)
                .padding()
                .background(.maroonBC)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center) // align multiple rows in Text view
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/) // flexible width for smaller/larger devices
                .padding()
            
            Spacer()
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                
                Spacer()
                
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
        //.background(.yellow)
        //.background(.yellow.opacity(0.5)) // create a washed out color
        //.background(.yellow.gradient)  // add gradient
        //.background(.black.gradient) // black shows gradient better
        .background(  // a more complex gradient
            //Gradient(colors: [.orange, .yellow])
            //Gradient(colors: [.yellow, .orange])      // switch colors
            //Gradient(colors: [.skyBlue, .indigo])     // use custom color
            Gradient(colors: [.white, .blue, .red])     // patriotic
        )
    }
}

// Types of gradient
struct ContentView7: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(
                    Gradient(colors: [.yellow, .orange])
                )
            
            Rectangle()
                .fill(
                    LinearGradient(colors: [.red, .white, .blue], 
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing)
                )
            
            Rectangle()
                .fill(
                    RadialGradient(
                        colors: [.red, .white, .blue],
                        center: .center,
                        startRadius: 50,
                        endRadius: 100)
                )
            
            Rectangle()
                .fill (
                    AngularGradient(
                        colors: [.red, .orange, .yellow, .green, .blue, .indigo, .purple],
                        center: .center)
                )
        }
    }
}

// Part 3 starting point
struct ContentView8: View {
    @State private var messageString = "When the Genius Bar Needs Help, They Call You!"
    
    var body: some View {
        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center) // align multiple rows in Text view
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/) // flexible width for smaller/larger devices
                //.border(.orange, width: 2)
                .padding()
            
            Spacer()
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                
                Spacer()
                
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

// Dividers
struct ContentView9: View {
    @State private var messageString = "When the Genius Bar Needs Help, They Call You!"
    
    var body: some View {
        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center) // align multiple rows in Text view
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/) // flexible width for smaller/larger devices
                //.border(.orange, width: 2)
                .padding()
            
            Spacer()
            
            // Horizontal Divider
            Divider()
                .background(.blue)
                .padding()
                .frame(width: 150.0)
            
            // A more flexible divider using Rectangle
            Rectangle()
                .fill(.indigo)
                .frame(width: 175, height: 1)
            
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                
                Spacer()
                
                // Vertical Divider
                /*
                Divider()
                    .background(.blue)
                    .padding()
                */
                
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

// GeometryReader to scale divider (i.e. 1/3 or 1/2 device width)
struct ContentView10: View {
    @State private var messageString = "When the Genius Bar Needs Help, They Call You!"
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center) // align multiple rows in Text view
                    .foregroundStyle(.red)
                    .frame(height: 150)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/) // flexible width for smaller/larger devices
                    //.border(.orange, width: 2)
                    .padding()
                
                Spacer()
                
                // Horizontal Divider
                Divider()
                    .background(.blue)
                    .padding()
                    .frame(width: 150.0)
                
                // A more flexible divider using Rectangle
                Rectangle()
                    .fill(.indigo)
                    //.frame(width: geometry.size.width * 2/3, height: 1)
                    .frame(width: geometry.size.width * 0.5, height: 1)
                
                
                HStack {
                    Button("Awesome") {
                        messageString = "You Are Awesome!"
                    }
                    
                    Spacer()
                    
                    // Vertical Divider
                    /*
                    Divider()
                        .background(.blue)
                        .padding()
                    */
                    
                    Button("Great") {
                        messageString = "You Are Great!"
                    }
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }

    }
}

// How to make safe area different color from rest of app
struct ContentView11: View {
    @State private var messageString = "When the Genius Bar Needs Help, They Call You!"
    
    var body: some View {
        VStack {
            // Top Safe Area
            Text("You Have Skills!")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.white)
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/) // must come before .background to spread all the way across
                .background(.purple)
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center) // align multiple rows in Text view
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/) // flexible width for smaller/larger devices
                .padding()
            
            Spacer()
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                
                Spacer()
                
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .padding()
            
            // Bottom Safe Area
            Rectangle()
                .frame(height: 0)
                .background(.indigo)
        }
    }
}
#Preview {
    ContentView()
}
