//
//  GameView.swift
//  TicTacToe
//
//  Created by Yajat Kumar on 2022-02-01.
//

import SwiftUI

// The view where the game is played. Contains the board which will accept 0,X
struct GameView: View {
    
    // If it is the turn of X
    @State var xTurn = true
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                BoxTickView(boxNumber: 1, turn: $xTurn)
                Spacer()
                BoxTickView(boxNumber: 2, turn: $xTurn)
                Spacer()
                BoxTickView(boxNumber: 3, turn: $xTurn)
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                BoxTickView(boxNumber: 4, turn: $xTurn)
                Spacer()
                BoxTickView(boxNumber: 5, turn: $xTurn)
                Spacer()
                BoxTickView(boxNumber: 6, turn: $xTurn)
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                BoxTickView(boxNumber: 7, turn: $xTurn)
                Spacer()
                BoxTickView(boxNumber: 8, turn: $xTurn)
                Spacer()
                BoxTickView(boxNumber: 9, turn: $xTurn)
                Spacer()
            }
            Spacer()
        }
    }
}


struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .previewInterfaceOrientation(.portrait)
    }
}
