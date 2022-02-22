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
#if os(iOS)
        MainPageView().navigationViewStyle(StackNavigationViewStyle())
#elseif os(macOS)
        MainPageView()
#endif
    }
}

struct MainPageView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
#if os(macOS)
                Spacer()
#endif
                
                Text("Tic \nTac \nToe")
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
                
                NavigationLink(destination: GameView()) {
                    Text("Two players")
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
