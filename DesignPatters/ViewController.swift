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
//        testAbstractFactory()
        
//        3- builder
//        testBuilder()
        
//        4- Prototype
        testPrototype()
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

    func testBuilder() {
        var card: Card = Card.CardBuilder()
            .carType(cardType: "Visa")
            .numberCard(number: "6452 3473 2823 1232")
            .expiredCard(expired: 2030)
            .build()
        
        card.showCard()
    }
    
    func testPrototype() {
        let original = VisaCard(cardNumber: 1234, cardType: "Credit")
        
        guard let copy = original.copy() as? VisaCard else {
            return
        }
        
        print(original.cardName)
        print(copy.cardName)
        
        print(original.cardNumber)
        print(copy.cardNumber)
    }
}

