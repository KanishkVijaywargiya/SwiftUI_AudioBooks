//
//  PlayerBox.swift
//  AudioBooks
//
//  Created by KANISHK VIJAYWARGIYA on 06/08/21.
//

import SwiftUI

struct PlayerBox: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 355, height: 355)
                .opacity(0.3)
        }
    }
}

struct PlayerBox_Previews: PreviewProvider {
    static var previews: some View {
        PlayerBox()
    }
}
