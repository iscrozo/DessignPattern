//
//  ArticleOriginator.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 18/10/22.
//

import Foundation

struct ArticleOriginator {
    var id: Int
    var title: String
    var text: String
    
    func createMemento() -> ArticleMemento {
        let memento = ArticleMemento(id: id, title: title, text: text)
        return memento
    }
    
    mutating func restore(memento: ArticleMemento) {
        self.id = memento.id
        self.title = memento.title
        self.text = memento.text
    }
}
