//
//  CapitalStrategyTextFormatter.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

class CapitalStrategyTextFormatter: StrategyTextFormatter {
    func format(text: String) {
        print("Texto en Mayusculas: \(text.uppercased())")
    }
    
}
