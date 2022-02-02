//
//  GameView.swift
//  TicTacToe
//
//  Created by Yajat Kumar on 2022-02-01.
//

import SwiftUI

// The view where the game is played. Contains the board which will accept 0,X
struct GameView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                BoxTickView(boxState: BoxTickView.BoxState.cross)
                Spacer()
                BoxTickView()
                Spacer()
                BoxTickView()
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                BoxTickView()
                Spacer()
                BoxTickView()
                Spacer()
                BoxTickView()
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                BoxTickView()
                Spacer()
                BoxTickView()
                Spacer()
                BoxTickView()
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
