//
//  Car.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 18/10/22.
//

import Foundation

class Car: Observer {
    func update(trafficLight: TrafficLight) {
        if ( trafficLight.status == "CAR_RED") {
            print("Semaforo coche Rojo -> Coche no puede pasar")
        } else {
            print("semaforo coche Verde -> Coche si puede pasar")
        }
    }
}
