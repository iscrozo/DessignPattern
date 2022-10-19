//
//  TerminalExpression.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

class TerminalExpression: Expression {
    var text: String
    
    init(text: String) {
        self.text = text
    }
    
    func interpret(context: String) -> Bool {
        if ( context.contains(text)) {
            return true
        } else {
            return false
        }
    }
}
