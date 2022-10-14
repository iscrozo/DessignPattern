//
//  ViewController.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 14/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        testFactoryMethod()
    }

    
    func testFactoryMethod() {
        var payment: Payment
        payment = PaymentFactory.buildPayment(type: .GOOGLE)
        payment.doPayment() 
    }

}

