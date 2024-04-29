//
//  CheeseThemeViewModifier.swift
//  
//
//  Created by Geovana Contine on 29/04/24.
//

import SwiftUI

struct CheeseThemeViewModifier: ViewModifier {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var currentTheme: CheeseTheme
    
    let lightTheme: CheeseTheme
    let darkTheme: CheeseTheme
    
    init(lightTheme: CheeseTheme, darkTheme: CheeseTheme) {
        self.lightTheme = lightTheme
        self.darkTheme = darkTheme
        self.currentTheme = lightTheme
    }
    
    func body(content: Content) -> some View {
        content
            .environment(\.cheeseTheme, currentTheme)
            .onAppear {
                updateTheme(forScheme: colorScheme)
            }
            .onChange(of: colorScheme) { newScheme in
                updateTheme(forScheme: newScheme)
            }
            .tint(currentTheme.color.brand.primary)
            .accentColor(currentTheme.color.brand.primary)
            .background(currentTheme.color.background.primary)
    }
    
    private func updateTheme(forScheme scheme: ColorScheme) {
        currentTheme = scheme == .light ? lightTheme : darkTheme
    }
}

public extension View {
    func cheeseTheme(light: CheeseTheme, dark: CheeseTheme) -> some View {
        modifier(
            CheeseThemeViewModifier(
                lightTheme: light,
                darkTheme: dark
            )
        )
    }
    
    func cheeseDefaultTheme() -> some View {
        cheeseTheme(
            light: CheeseThemeFactory.defaultLight,
            dark: CheeseThemeFactory.defaultDark
        )
    }
}
