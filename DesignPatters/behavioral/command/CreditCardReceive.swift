//
//  CreditCardReceive.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 17/10/22.
//

import Foundation

class CreditCardReceiver {
    
    
    func sendPINNumberToCustomer() {
        print("El pin number ha sido enviado al cliente")
    }
    
    func sendSMSToCustomerActive() {
        print("Enviando SMS al cliente informando que su tarjeta ha sido activada")
    }
    
    func activate() {
        print ("La tarjeta ha sido activada")
    }
    
    func desactivate() {
        print("La tarjeta ha sido desactivada")
    }
    
    func sendSMSToCustomerDesactivate() {
        print("Enviado SMS al cliente informando que su Tarjeta ha sido desactivada")
    }
    
}
