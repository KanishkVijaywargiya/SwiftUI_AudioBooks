//
//  FreeBooksView.swift
//  AudioBooks
//
//  Created by MANAS VIJAYWARGIYA on 01/08/21.
//

import SwiftUI

struct FreeBooksView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack {
                VStack(alignment: .leading) {
                    ForEach(0..<10, id: \.self) { _ in
                        NavigationLink(
                            destination: DetailView()) {
                            BooksView()
                                .frame(height: 220)
                        }
                    }
                }
            }
            .navigationBarTitle("Free Books")
        }
    }
}

struct FreeBooksView_Previews: PreviewProvider {
    static var previews: some View {
        FreeBooksView()
    }
}
