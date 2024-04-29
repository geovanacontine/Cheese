//
//  CheeseColors.swift
//  
//
//  Created by Geovana Contine on 29/04/24.
//

import SwiftUI

public struct CheeseColors {
    public let brand: Brand
    public let background: Background
    public let feedback: Feedback
}

// Brand
public extension CheeseColors {
    public struct Brand {
        public let primary: Color
        public let secondary: Color
    }
}

// Background
public extension CheeseColors {
    public struct Background {
        public let primary: Color
        public let secondary: Color
    }
}
    
// Feedback
public extension CheeseColors {
    public struct Feedback {
        public let warning: Color
        public let positive: Color
        public let negative: Color
    }
}
