//
//  TileCard.swift
//  AudioBooks
//
//  Created by MANAS VIJAYWARGIYA on 01/08/21.
//

import SwiftUI

struct TileCard: View {
    let iconBg: Color
    let tileBg: Color
    let textFg: Color
    let text: String
    let buttonBg: Color
    let buttonFg: Color
    let buttonText: String
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                HStack {
                    Image("icon")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 25, height: 25)
                    
                    Text("audiobooks")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .semibold))
                }
                .padding(.vertical, 6).padding(.horizontal, 12)
                .background(iconBg)
                .clipShape(Capsule())
                Spacer()
            }
            
            Spacer()
            
            Text(text)
                .font(.system(size: 45, weight: .medium))
                .foregroundColor(textFg)
                .lineLimit(3)
            
            
            
            Spacer()
            Text(buttonText)
                .foregroundColor(buttonFg)
                .font(.system(size: 30, weight: .semibold))
                .frame(width: 350, height: 50)
                .background(buttonBg)
                .cornerRadius(12)
            
        }
        .padding()
        .frame(width: UIScreen.main.bounds.width - 30 , height: UIScreen.main.bounds.height / 3)
        .background(tileBg)
        .cornerRadius(20)
        .padding(.bottom, 6)
    }
}

//struct TileCard_Previews: PreviewProvider {
//    static var previews: some View {
//        TileCard()
//    }
//}
