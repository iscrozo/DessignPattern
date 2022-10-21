//
//  CreditMarketFacade.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 20/10/22.
//

import Foundation

class CreditMarketFacade {
    var black = BlackModule()
    var gold = GoldModule()
    var silver = SilverModule()
    
    func showCreditBlack() {
        black.showCredit()
    }
    
    func showCreditGold() {
        gold.showCredit()
    }
    
    func showCreditSilver() {
        silver.showCredit()
    }
}
