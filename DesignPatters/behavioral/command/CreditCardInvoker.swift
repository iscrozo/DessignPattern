//
//  CreditCardInvoker.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 17/10/22.
//
// Invoker
import Foundation

class CreditCardInvoker {
    private var command: Command?
    
    func setCommand(command : Command ){
        self.command = command
    }
    
    func run() {
        command?.execute()
    }
    
}
