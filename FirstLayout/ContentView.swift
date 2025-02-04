//
//  ContentView.swift
//  FirstLayout
//
//  Created by Francisco Jean on 04/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.blue.opacity(0.1).edgesIgnoringSafeArea(.all)
            VStack {
                HStack(alignment: .top) {
                    Image(systemName: "star.fill")
                    Spacer()
                    Image(systemName: "heart.fill")
                }
                .font(.system(size: 18))
                .padding(25)
                Spacer()
                Image("CharacterProfile")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220)
                    .clipShape(Circle())
                VStack(alignment: .leading){
                    Text("Max")
                        .font(.largeTitle)
                    Text("iOS Developer")
                        .font(.headline)
                    Text("I am very happy to announce that I'm a really good iOS developer and can now do some pretty cool things with SwiftUI")
                        .padding(.top, 5)
                }
                .padding(.horizontal)
               
                Text("Hobbies")
                    .font(.title2)
                    .padding()
                HStack {
                    Image(systemName: "music.microphone")
                        .foregroundColor(.orange)
                    Image(systemName: "pianokeys.inverse")
                    Image(systemName: "book.closed.fill")
                        .foregroundColor(.green)
                    Image(systemName: "laptopcomputer")
                        .foregroundColor(.blue)
                }
                .font(.system(size: 18))
                Spacer()
                Spacer()
                Button(action: {
                    print("Button tapped!")
                }) {
                    Label("Tap Me",  systemImage: "cursorarrow.click.2")
                }
                .font(.title2)
                .foregroundColor(.purple)
                
            }
        }
    }
}



#Preview {
    ContentView()
}
