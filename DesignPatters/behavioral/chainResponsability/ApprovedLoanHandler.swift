//
//  ApprovedLoanHandler.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 17/10/22.
//
// handler
import Foundation

protocol ApprovedLoanHandler {
    func setNext(hanlder: ApprovedLoanHandler)
    func getNext() -> ApprovedLoanHandler
    func creditCardRequest(totalLoan: Int)
}
