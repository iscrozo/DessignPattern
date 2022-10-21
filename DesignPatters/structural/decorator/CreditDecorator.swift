//
//  CreditDecorator.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 20/10/22.
//

import Foundation

class CreditDecorator: CreditComponent {
    
    var decorated: CreditComponent
    
    init(decorated: CreditComponent) {
        self.decorated = decorated
    }
    
    func showCredit() {
        
    }
    
    
}
