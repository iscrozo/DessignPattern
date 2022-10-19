//
//  MobileAlertStateContext.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

class MobileAlertStateContext {
    
    var currentState: MobileAlertState = Sound()
    
    func setState(state: MobileAlertState ){
        currentState = state
    }
    
    func alert() {
        currentState.alert(context: self)
    }
}
