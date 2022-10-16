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
        
//         1- factoryMethod pattern
//        testFactoryMethod()
        
//        2- Abstract factory pattern
        testAbstractFactory()
    }

    
    func testFactoryMethod() {
        var payment: Payment
        payment = PaymentFactory.buildPayment(type: .GOOGLE)
        payment.doPayment() 
    }
    
    func testAbstractFactory() {
//        1era factoria
        PaymentMethodClient.codigoCliente(factory: MonthlyGoogleFactory())
        print("\n")
//        2da factoria
        PaymentMethodClient.codigoCliente(factory: PaymentIntAdvancedCardFactory())
    }

}

