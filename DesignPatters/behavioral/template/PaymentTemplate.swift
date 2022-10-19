//
//  PaymentTemplate.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

protocol PaymentTemplate {
    func initialize()
    func startPayment()
    func endPayment()
}

extension PaymentTemplate {
    func makePayment(){
        initialize()
        startPayment()
        endPayment()
    }
}
