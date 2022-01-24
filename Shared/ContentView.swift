//
//  ContentView.swift
//  Shared
//
//  Created by Yajat Kumar on 2022-01-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HStack {
                Spacer()
                
                Button(action: {
                    
                }
                ){
                    Image("settings")
                }
            }
            
            Spacer()
            
            Button("One player") {
                
            }
            
            Button("Two player") {
                
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
