//
//  ContentView.swift
//  AudioBooks
//
//  Created by MANAS VIJAYWARGIYA on 01/08/21.
//

import SwiftUI

struct ContentView: View {    
    @State var selectedIndex = 0

    var body: some View {
        MainTabView(selectedIndex: $selectedIndex)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
