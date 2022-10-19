//
//  Expression.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

protocol Expression {
    func interpret(context: String) -> Bool
}
