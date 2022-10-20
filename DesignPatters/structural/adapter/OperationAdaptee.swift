//
//  OperationAdaptee.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

class OperationAdaptee {
    
    var a: Int
    var b: Int

    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    
    func sum() -> Int {
        return a + b
    }

}
