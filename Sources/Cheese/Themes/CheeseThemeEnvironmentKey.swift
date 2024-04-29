//
//  CheeseThemeEnvironmentKey.swift
//
//
//  Created by Geovana Contine on 29/04/24.
//

import SwiftUI

public struct CheeseThemeEnvironmentKey: EnvironmentKey {
    public static let defaultValue: CheeseTheme = CheeseThemeFactory.defaultLight
}

public extension EnvironmentValues {
    var cheeseTheme: CheeseTheme {
        get { self[CheeseThemeEnvironmentKey.self] }
        set { self[CheeseThemeEnvironmentKey.self] = newValue }
    }
}
