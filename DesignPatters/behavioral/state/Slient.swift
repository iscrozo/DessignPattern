//
//  Slient.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

class Silent: MobileAlertState {
    func alert(context: MobileAlertStateContext) {
        print("Esta en silencio...")
    }
    
    
}
