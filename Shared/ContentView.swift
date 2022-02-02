//
//  ContentView.swift
//  Shared
//
//  Created by Yajat Kumar on 2022-01-22.
//

import SwiftUI

// View with the main content. Shown on start
struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        
                    }
                    ){
                        Image(systemName: "gear")
                    }
                }
                
                Spacer()
                
                NavigationLink(destination: GameView()) {
                    Text("One player")
                }
                
                NavigationLink(destination: GameView()) {
                    Text("Two player")
                }
                
                Spacer()
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
