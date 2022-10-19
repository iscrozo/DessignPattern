//
//  LowerStratefyTextFormatter.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

class LowerStratefyTextFormatter : StrategyTextFormatter {
    func format(text: String) {
        print("Texto en Mayusculas: \(text.lowercased())")
    }
    
}

