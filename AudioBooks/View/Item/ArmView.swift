//
//  ArmView.swift
//  AudioBooks
//
//  Created by KANISHK VIJAYWARGIYA on 06/08/21.
//

import SwiftUI

struct ArmView: View {
    @Binding var rotateArm: Bool
    var body: some View {
        Image("playerArm")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 150)
            .shadow(color: .gray, radius: 2, x: 0.0, y: 0.0)
            .rotationEffect(Angle.degrees(-35), anchor: .topTrailing)
            .rotationEffect(Angle.degrees(rotateArm ? 8 : 0), anchor: .topTrailing)
            .animation(Animation.linear(duration: 2))
            .offset(x: 70, y: -250)
    }
}

struct ArmView_Previews: PreviewProvider {
    static var previews: some View {
        ArmView(rotateArm: .constant(false))
    }
}
