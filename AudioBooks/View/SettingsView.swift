//
//  SettingsView.swift
//  AudioBooks
//
//  Created by MANAS VIJAYWARGIYA on 01/08/21.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isDarkMode") var  isDarkMode: Bool = false
    
    var body: some View {
        Form {
            Toggle(isOn: $isDarkMode) {
                Text("Dark Mode")
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
