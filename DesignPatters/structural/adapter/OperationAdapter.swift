//
//  OperationAdapter.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

class OperationAdapter: OperationTarget {
    
    let adaptee: OperationAdaptee
    
    init(adaptee: OperationAdaptee) {
        self.adaptee = adaptee
    }
    var getSum: String {
        return String(self.adaptee.sum())
    }
    
}
