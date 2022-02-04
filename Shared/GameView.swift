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
    
    // The set of X boxes checked
    @State var xChecked = Set<Int>()
    
    // The set of 0 boxes checked
    @State var zChecked = Set<Int>()
    
    // Whether the game over alert is shown
    @State private var showAlert = false
    
    // Presentation mode var to dismiss view
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                BoxTickView(
                    boxNumber: 1,
                    turn: $xTurn,
                    action: {
                        check(element: 1)
                    }
                )
                Spacer()
                BoxTickView(
                    boxNumber: 2,
                    turn: $xTurn,
                    action: {
                        check(element: 2)
                    }
                )
                Spacer()
                BoxTickView(
                    boxNumber: 3,
                    turn: $xTurn,
                    action: {
                        check(element: 3)
                    }
                )
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                BoxTickView(
                    boxNumber: 4,
                    turn: $xTurn,
                    action: {
                        check(element: 4)
                    }
                )
                Spacer()
                BoxTickView(
                    boxNumber: 5,
                    turn: $xTurn,
                    action: {
                        check(element: 5)
                    }
                )
                Spacer()
                BoxTickView(
                    boxNumber: 6,
                    turn: $xTurn,
                    action: {
                        check(element: 6)
                    }
                )
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                BoxTickView(
                    boxNumber: 7,
                    turn: $xTurn,
                    action: {
                        check(element: 7)
                    }
                )
                Spacer()
                BoxTickView(
                    boxNumber: 8,
                    turn: $xTurn,
                    action: {
                        check(element: 8)
                    }
                )
                Spacer()
                BoxTickView(
                    boxNumber: 9,
                    turn: $xTurn,
                    action: {
                        check(element: 9)
                    }
                )
                Spacer()
            }
            Spacer()
        }.alert(isPresented: $showAlert) {
            // Alert when all boxes are full
            Alert(
                title: Text("Game over"),
                message: Text("Cross won"),
                primaryButton: .default(
                    Text("Try Again"),
                    action: {
                        // New game
                        xChecked.removeAll()
                        zChecked.removeAll()
                        xTurn = true
                        showAlert = false
                    }
                ),
                secondaryButton: .destructive(
                    Text("Main menu"),
                    action: {
                        presentationMode.wrappedValue.dismiss()
                    }
                )
            )
        }
    }
    
    
    // Function to check the box
    func check(element: Int) {
        // If the element to be added is not checked
        let unChecked = !xChecked.contains(element) && !zChecked.contains(element)
        
        // Numer of checked boxes
        let size = xChecked.count + zChecked.count
        
        // Boxes are full
        if size >= 9 {
            return
        }
        
        
        if unChecked {
            if (xTurn) {
                xChecked.insert(element)
            } else {
                zChecked.insert(element)
            }
        }
        
        // Last box was checked
        if (size == 8){
            showAlert = true
        }
    }
    
}


struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .previewInterfaceOrientation(.portrait)
    }
}
