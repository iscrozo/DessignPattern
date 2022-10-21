//
//  InternationalPaymentDecorator.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 20/10/22.
//

import Foundation

class InternationalPaymentDecorator: CreditDecorator {
    
    override init(decorated: CreditComponent) {
        super.init(decorated: decorated)
    }
    
    override func showCredit() {
        decorated.showCredit()
        configInternationalPayment()
    }
    
    func configInternationalPayment() {
        print("Tarjeta configurada con pago internacional")
    }
    
    
}
