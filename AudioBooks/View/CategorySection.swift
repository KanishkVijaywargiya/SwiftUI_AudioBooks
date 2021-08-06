//
//  CategorySection.swift
//  AudioBooks
//
//  Created by MANAS VIJAYWARGIYA on 01/08/21.
//

import SwiftUI

struct CategorySection: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            NavigationLink(destination: FreeBooksView()) {
                TileCard(iconBg: Color(#colorLiteral(red: 0.8392156863, green: 0.1490196078, blue: 0.4196078431, alpha: 1)), tileBg: Color(#colorLiteral(red: 1, green: 0.1803921569, blue: 0.5019607843, alpha: 1)), textFg: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), text: "The power of creating unrealistic", buttonBg: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), buttonFg: Color(#colorLiteral(red: 1, green: 0.1803921569, blue: 0.5019607843, alpha: 1)), buttonText: "Fantasy Stories")
                    .padding(.top)
            }
            
            TileCard(iconBg: Color(#colorLiteral(red: 1, green: 0.7215686275, blue: 0.1490196078, alpha: 1)), tileBg: Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)), textFg: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), text: "Text that someone has said", buttonBg: Color(#colorLiteral(red: 1, green: 0.7215686275, blue: 0.1490196078, alpha: 1)), buttonFg: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), buttonText: "Famous Quotes")
            
            TileCard(iconBg: Color(#colorLiteral(red: 0.1490196078, green: 0.4392156863, blue: 0.8274509804, alpha: 1)), tileBg: Color(#colorLiteral(red: 0.1803921569, green: 0.5333333333, blue: 1, alpha: 1)), textFg: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), text: "Self written life story", buttonBg: Color(#colorLiteral(red: 0.1490196078, green: 0.4392156863, blue: 0.8274509804, alpha: 1)), buttonFg: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), buttonText: "Listen To Biographies")
            
            TileCard(iconBg: Color(#colorLiteral(red: 0.6039215686, green: 0.4078431373, blue: 0, alpha: 1)), tileBg: Color(#colorLiteral(red: 1, green: 0.7215686275, blue: 0.1490196078, alpha: 1)), textFg: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), text: "Know the enemy & yourself!", buttonBg: Color(#colorLiteral(red: 0.6039215686, green: 0.4078431373, blue: 0, alpha: 1)), buttonFg: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), buttonText: "Self Guide")
            
            TileCard(iconBg: Color(#colorLiteral(red: 0.05098039216, green: 0.6980392157, blue: 0.262745098, alpha: 1)), tileBg: Color(#colorLiteral(red: 0.3803921569, green: 0.9215686275, blue: 0.5568627451, alpha: 1)), textFg: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), text: "Individual who starts on an idea!", buttonBg: Color(#colorLiteral(red: 0.05098039216, green: 0.6980392157, blue: 0.262745098, alpha: 1)), buttonFg: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), buttonText: "Hear To Entrepreneurs")
        }
        .navigationBarTitle(Text("Category"))
    }
}

struct CategorySection_Previews: PreviewProvider {
    static var previews: some View {
        CategorySection()
    }
}
