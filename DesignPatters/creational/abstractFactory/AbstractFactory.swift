//
//  AbstractFactory.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 16/10/22.
//

import Foundation

protocol AbstractFactory {
    func createPayment() -> PaymentAF
    func createMethod() -> Method
}
