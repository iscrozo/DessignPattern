//
//  SecureDecorator.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 20/10/22.
//

import Foundation

class SecureDecorator: CreditDecorator {
    override init(decorated: CreditComponent) {
        super.init(decorated: decorated)
    }
    
    override func showCredit() {
        decorated.showCredit()
        configSecure()
    }
    
    func configSecure() {
        print("Tarjeta configurada con pago Secure")
    }
    
}
