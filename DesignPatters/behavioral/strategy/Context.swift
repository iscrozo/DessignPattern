//
//  Context.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

class Context {

    var strategyTextFormatter: StrategyTextFormatter
    
    init(strategyTextFormatter: StrategyTextFormatter) {
        self.strategyTextFormatter = strategyTextFormatter
    }
    
    func publishText(text: String) {
        strategyTextFormatter.format(text: text)
    }
    
}
