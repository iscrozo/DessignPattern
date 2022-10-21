//
//  ProxyInternet.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 21/10/22.
//

import Foundation

class ProxyInternet: Internet {
    
    var internet = AccessToInternet()
    var bannedUrl = [String]()
    
    init() {
        bannedUrl.append("twitter.com")
        bannedUrl.append("facebook.com")
        bannedUrl.append("Instagram")
    }
    
    func connectTo(url: String) {
        if (bannedUrl.contains(url)) {
            print("Intentando conectar...")
            print("URL Bloqueada - acceso denegado, Consulta a tu administrador")
        } else {
            internet.connectTo(url: url)
        }
    }
}
