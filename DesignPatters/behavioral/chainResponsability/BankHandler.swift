//
//  BankHandler.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 17/10/22.
//

import Foundation

class BankHandler: ApprovedLoanHandler {
    
    private var next: ApprovedLoanHandler?
    
    func setNext(hanlder: ApprovedLoanHandler) {
        next = hanlder
    }
    
    func getNext() -> ApprovedLoanHandler {
        return next!
    }
    
    func creditCardRequest(totalLoan: Int) {
        let gold = GoldHandler()
        self.setNext(hanlder: gold)
        
        let platinium = PlatiniumHandler()
        gold.setNext(hanlder: platinium)
        
        let black = BlackHandler()
        platinium.setNext(hanlder: black)
        
        next?.creditCardRequest(totalLoan: totalLoan)
    }
    
}
