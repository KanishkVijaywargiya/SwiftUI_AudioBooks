//
//  BooksView.swift
//  AudioBooks
//
//  Created by MANAS VIJAYWARGIYA on 01/08/21.
//

import SwiftUI

struct BooksView: View {
    var body: some View {
        VStack {
            VStack {
                HStack(spacing: 8) {
                    Image("img")
                        .resizable()
                        .cornerRadius(20)
                        .frame(width: 150, height: 180)
                        .scaledToFill()
                        .padding()
                        .overlay(
                            Image(systemName: "heart")
                                .font(.system(size: 22))
                                .padding([.horizontal, .vertical], 5)
                                .background(Color.white).opacity(0.8)
                                .clipShape(Circle())
                                .offset(x: 65 ,y: -80)
                        )
                    
                    VStack(alignment: .leading) {
                        Text("Scion of Ikshvaku")
                            .font(Font.custom("AppleSDGothicNeo-bold", size: 22))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .lineLimit(1)
                        Text("Ram Chandra Series, Book 1")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
                            .lineLimit(1)
                            .padding(.bottom, 5)
                        Text("Ayodhya is weakened by divisions. A terrible war has taken its toll. The damage runs deep.")
                            .font(.system(size: 14))
                            .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                            .lineLimit(3)
                        
                        Spacer()
                        
                        HStack {
                            Spacer()
                            
                            Text("Read")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundColor(.white)
                                .frame(width: 80, height: 30)
                                .background(Color.blue)
                                .clipShape(Capsule())
                                .padding(.trailing, 8)
                        }
                        .padding(.top, 10)
                    }
                    .padding(.trailing, 8)
                }
            }
            .background(Color(#colorLiteral(red: 0.1568627451, green: 0.1490196078, blue: 0.1529411765, alpha: 1)))
            .cornerRadius(25)
            .frame(maxHeight: 160)
            .padding()
            .shadow(color: Color(#colorLiteral(red: 0.1568627451, green: 0.1490196078, blue: 0.1529411765, alpha: 1)), radius: 6, x: 0.0, y: 0.0)
        }
        .padding(.vertical, 15)
    }
}


struct BooksView_Previews: PreviewProvider {
    static var previews: some View {
        BooksView()
    }
}
