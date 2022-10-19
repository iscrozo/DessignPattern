//
//  Visa.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

class Visa: PaymentTemplate {
    
    func initialize() {
        print("Inicializando el pago con Visa")
    }
    
    func startPayment() {
        print("Realizando el pago a traves de los servidores de Visa")
    }
    
    func endPayment() {
        print("Finalizando el pago a traves de los servidores de Visa")
    }
    
}
