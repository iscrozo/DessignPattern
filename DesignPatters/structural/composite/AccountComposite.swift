//
//  AccountComposite.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

class AccountComposite: AccountComponent {
    
    var childAccounts = [AccountComponent]()
    
    func addAccount(account: AccountComponent) {
        childAccounts.append(account)
    }
    
    func removeAccount(account: AccountComponent) {
        
    }
    
    func showAccountName() {
        for childAccount in childAccounts {
            childAccount.showAccountName()
        }
    }
}
