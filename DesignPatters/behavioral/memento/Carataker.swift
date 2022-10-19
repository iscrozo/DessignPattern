//
//  Carataker.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 18/10/22.
//

import Foundation

class Carataker {
    
    private var estados = [ArticleMemento]()
    
    func addMemento(memento: ArticleMemento) {
        estados.append(memento)
    }
    
    func getMemento(index: Int) -> ArticleMemento {
        return estados[index]
    }
    
}
