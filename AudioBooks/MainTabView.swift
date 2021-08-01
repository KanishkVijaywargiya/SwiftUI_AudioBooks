//
//  MainTabView.swift
//  AudioBooks
//
//  Created by MANAS VIJAYWARGIYA on 01/08/21.
//

import SwiftUI

struct MainTabView: View {
    @Binding var selectedIndex: Int
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedIndex) {
                CategorySection()
                    .onTapGesture {
                        selectedIndex = 0
                    }
                    .tabItem {
                        Image(systemName: "books.vertical.fill")
                        Text("Category")
                    }.tag(0)
                
                TrendingView()
                    .onTapGesture {
                        selectedIndex = 1
                    }
                    .tabItem {
                        Image(systemName: "books.vertical.fill")
                        Text("Trending")
                    }.tag(1)
                
                SettingsView()
                    .onTapGesture {
                        selectedIndex = 2
                    }
                    .tabItem {
                        Image(systemName: "books.vertical.fill")
                        Text("Settings")
                    }.tag(2)
                
            }
            .navigationBarTitle(tabTitle)
        }
    }
    
    var tabTitle: String {
        switch selectedIndex {
        case 0: return "Category"
        case 1: return "Trending Books"
        case 2: return "Settings"
        default: return ""
        }
    }
    
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(selectedIndex: .constant(0))
    }
}
