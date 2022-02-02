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

    var boxState = BoxState.empty
    
    
    var body: some View {
        if (boxState == BoxState.cross) {
            Image(systemName: "multiply")
        } else if(boxState == BoxState.zero) {
            Image(systemName: "circle")
        }
    }
}

struct BoxTickView_Previews: PreviewProvider {
    static var previews: some View {
        BoxTickView()
    }
}
