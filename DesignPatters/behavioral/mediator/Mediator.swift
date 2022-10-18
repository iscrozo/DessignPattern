//
//  Mediator.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 17/10/22.
//

import Foundation

protocol Mediator {
    func send(message: String, colleague: Colleague)
}
