//
//  CheeseThemeFactory.swift
//  
//
//  Created by Geovana Contine on 29/04/24.
//

import Foundation

public struct CheeseThemeFactory {
    
    static public var defaultLight: CheeseTheme {
        makeTheme(
            colors: .init(
                brand: .init(
                    primary: .blue,
                    secondary: .indigo
                ),
                background: .init(
                    primary: .white,
                    secondary: .gray
                ),
                feedback: .init(
                    warning: .orange,
                    positive: .green,
                    negative: .red
                )
            )
        )
    }
    
    static public var defaultDark: CheeseTheme {
        makeTheme(
            colors: .init(
                brand: .init(
                    primary: .orange,
                    secondary: .indigo
                ),
                background: .init(
                    primary: .black,
                    secondary: .gray
                ),
                feedback: .init(
                    warning: .orange,
                    positive: .green,
                    negative: .red
                )
            )
        )
    }
    
    static public func makeTheme(colors: CheeseColors) -> CheeseTheme {
        .init(
            color: colors,
            typography: CheeseTypography(),
            spacing: CheeseSpacing(),
            borderRadius: CheeseBorderRadius(),
            borderWidth: CheeseBorderWidth(),
            opacity: CheeseOpacity()
        )
    }
}
