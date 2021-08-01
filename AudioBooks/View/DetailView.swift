//
//  DetailView.swift
//  AudioBooks
//
//  Created by MANAS VIJAYWARGIYA on 01/08/21.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                GeometryReader { geo in
                    Image("img")
                        .resizable()
                        .offset(y: geo.frame(in: .global).minY > 0 ? -geo.frame(in: .global).minY : 0)
                        .frame(height: geo.frame(in: .global).minY > 0 ? 300 + geo.frame(in: .global).minY : 300)
                    
                    Spacer()
                    
                }.frame(height: 300)
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("Author: Amish Tripathi")
                            .foregroundColor(.secondary)
                            .font(.system(size: 14, weight: .semibold))
                    }
                    Text("Scion of Ikshvaku \nRam Chandra Series, Book 1")
                        .font(.headline)
                    
                    Text("Written by: Amish Tripathi \nNarrated by: Sagar Arya \nSeries: Ram Chandra \nLength: 11 hrs and 35 mins \nUnabridged Audiobook \nCategories: Literature & Fiction, World Literature")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    Text("Ayodhya is weakened by divisions. A terrible war has taken its toll. The damage runs deep. The demon King of Lanka, Raavan, does not impose his rule on the defeated. He instead imposes his trade. Money is sucked out of the empire. The Sapt Sindhu people descend into poverty, despondency and corruption. They cry for a leader to lead them out of the morass. Little do they appreciate that the leader is among them. One whom they know. A tortured and ostracised prince. A prince they tried to break. A prince called Ram. \nHe loves his country, even when his countrymen torment him. He stands alone for the law. His band of brothers, his Sita, and he against the darkness of chaos. \nWill Ram rise above the taint that others heap on him? Will his love for Sita sustain him through his struggle? Will he defeat the demon Lord Raavan who destroyed his childhood? Will he fulfil the destiny of the Vishnu? \nBegin an epic journey with Amish's latest: the Ram Chandra Series.")
                        .font(.body)
                        .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                        .padding(.bottom, 10)
                    Text("Chapters")
                        .foregroundColor(.secondary)
                    
                    List {
                        ForEach(1..<11) { num in
                            NavigationLink(
                                destination: AudioPlayerView()) {
                                Text("Chapter \(num)")
                            }
                        }
                    }
                }
                .padding()
            }
            .padding(.top, 120)
        }.edgesIgnoringSafeArea(.top)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
