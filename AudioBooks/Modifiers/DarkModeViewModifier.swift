//
//  DarkModeViewModifier.swift
//  AudioBooks
//
//  Created by MANAS VIJAYWARGIYA on 01/08/21.
//

import SwiftUI
public struct DarkModeViewModifier: ViewModifier {
  @AppStorage("isDarkMode") var isDarkMode: Bool = false
  public func body(content: Content) -> some View {
    content
      .environment(\.colorScheme, isDarkMode ? .dark : .light)
      .preferredColorScheme(isDarkMode ? .dark : .light)
  }
}
