//
//  Subject.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 18/10/22.
//

import Foundation

protocol Subject {
    func attach(o: Observer)
    func detacht(o: Observer)
    func notifyUpdate(trafficLight: TrafficLight)
}
