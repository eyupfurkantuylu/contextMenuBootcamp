//
//  ContentView.swift
//  contextMenuBootcamp
//
//  Created by Eyüp Tüylü on 31.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var backgroundColor: Color = Color.red
    
    var body: some View {
        VStack {
            Image(systemName: "house.fill")
                .font(.title)
            Text("YouTube Evim")
                .font(.headline)
            Text("Abone Ol!")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor)
        .cornerRadius(30)
        .padding()
        .contextMenu {
            Button {
                backgroundColor = .orange
            } label: {
                Label("Abone ol", systemImage: "bell.fill")
            }
            
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Yorum yap", systemImage: "text.bubble")
            }
            
            Button {
                backgroundColor = .blue
            } label: {
                Label("Videoyu beğen", systemImage: "hand.thumbsup")
            }



            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
