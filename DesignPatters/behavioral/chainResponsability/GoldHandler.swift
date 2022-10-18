//
//  GoldHandler.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 17/10/22.
//
// concrete Handler 1
import Foundation

class GoldHandler: ApprovedLoanHandler {
    
    private var next: ApprovedLoanHandler?
    
    func setNext(hanlder: ApprovedLoanHandler) {
        next = hanlder
    }
    
    func getNext() -> ApprovedLoanHandler {
        return next!
    }
    
    func creditCardRequest(totalLoan: Int) {
        if (totalLoan <= 10000) {
            print("Esta solicitud de tarjeta de credito la maneja la Clase GoldHandler")
        } else {
            next?.creditCardRequest(totalLoan: totalLoan)
        }
    }
    
    
}
