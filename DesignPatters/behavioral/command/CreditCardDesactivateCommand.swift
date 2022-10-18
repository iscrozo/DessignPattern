//
//  CreditCardDesactivateCommand.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 17/10/22.
//
// concrete command
import Foundation

class CreditCardDesactivateCommand : Command {
    
    var creditCardReceiver: CreditCardReceiver
    
    init(creditCardReceiver: CreditCardReceiver) {
        self.creditCardReceiver = creditCardReceiver
    }
    
    func execute() {
        creditCardReceiver.desactivate()
        creditCardReceiver.sendSMSToCustomerDesactivate()
    }
}

