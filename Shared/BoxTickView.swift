//
//  BoxTickView.swift
//  TicTacToe
//
//  Created by Yajat Kumar on 2022-02-01.
//

import SwiftUI

// View that represents a 0/X box
struct BoxTickView: View {
    
    enum BoxState {
        case empty
        case cross
        case zero
    }
    
    @State var boxState = BoxState.empty
    
    
    // The unique number to identify box in grid
    var boxNumber : Int
    
    // If it is X turn
    @Binding var turn : Bool
    
    var body: some View {
        Button(action: {
            if (turn) {
                boxState = BoxState.cross
            }
            else {
                boxState = BoxState.zero
            }
            turn.toggle()
        }) {
            if (boxState == BoxState.cross) {
                Image(systemName: "multiply")
                    .font(.system(size: 60))
            } else if(boxState == BoxState.zero) {
                Image(systemName: "circle")
                    .font(.system(size: 60))
            } else {
                Image(systemName: "square")
                    .font(.system(size: 60))
            }
        }
        .buttonStyle(.plain)
    }
    
}

struct BoxTickView_Previews: PreviewProvider {
    static var previews: some View {
        BoxTickView(boxNumber: 1, turn: Binding.constant(true))
    }
}
