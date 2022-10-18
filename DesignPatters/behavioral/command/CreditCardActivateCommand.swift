//
//  CreditCardActivateCommand.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 17/10/22.
//
// concrete Command
import Foundation

class CreditCardActivateCommand: Command {
    
    var creditCardReceiver: CreditCardReceiver
    
    init(creditCardReceiver: CreditCardReceiver) {
        self.creditCardReceiver = creditCardReceiver
    }
    
    func execute() {
        creditCardReceiver.sendPINNumberToCustomer()
        creditCardReceiver.activate()
        creditCardReceiver.sendSMSToCustomerActive()
    }
    
    
}
