//
//  Pedestrian.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 18/10/22.
//

import Foundation

class Pedestrian: Observer {

    func update(trafficLight: TrafficLight) {
        if ( trafficLight.status == "CAR_RED" ) {
            print("Semaforo peaton verde -> peaton si puede pasar")
        } else {
            print("semaforo peaton Rojo -> peaton no puede pasar")
        }
    }
}
