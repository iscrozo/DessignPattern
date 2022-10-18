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
        
//        test of design creation patter
//        testCreationPattern(typePattern: .singleton)
        
//        test of behavior pattern
        testBehaviorPatther(typePattern: .iterator)
    }
    
    func testCreationPattern ( typePattern: designCreationPattern){
        switch typePattern {
        //         1- factoryMethod pattern
        case .factoryMethods:
            testFactoryMethod()
        //        2- Abstract factory pattern
        case .abstractFactory:
            testAbstractFactory()
        //        3- builder
        case .builder:
            testBuilder()
        //        4- Prototype
        case .prototype:
            testPrototype()
        //        5- Singleton
        case .singleton:
            testSingleton()
        }
    }
    
    func testBehaviorPatther( typePattern: designBehaviorPattern) {
        switch typePattern {
        case .chainOfResponsability:
            testChainOfResponsability()
        case .command:
            testCommand()
        case .iterator:
            testIterator()
        }
    }

}

// MARK: creational pattern
extension ViewController {
    
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
    
    func testSingleton(){
        let instance = CardSingleton.shared
        let instance2 = CardSingleton.shared
        
        if ( instance === instance2 ){
            print ("LA i1 y la i2 es la misma")
        }
        
        instance.doSomething()
    }
}

// MARK: comportamiento pattern
extension ViewController {
    
    func testChainOfResponsability() {
        let bank = BankHandler()
        bank.creditCardRequest(totalLoan: 3000)
    }
    
    func testCommand(){
        let creditCard = CreditCardReceiver()
        let invoker =  CreditCardInvoker()
        invoker.setCommand(command: CreditCardActivateCommand(creditCardReceiver: creditCard))
        
        invoker.run()
        
        invoker.setCommand(command: CreditCardDesactivateCommand(creditCardReceiver: creditCard))
        invoker.run()
        
        
    }
    
    func testIterator(){
        let misTarjetas = CreditCardCollection()
        misTarjetas.append(CreditCard(type: "Gold"))
        misTarjetas.append(CreditCard(type: "Black"))
        misTarjetas.append(CreditCard(type: "Platinium"))
        
        for card in misTarjetas {
            print(card.type)
        }
    }
}

// creationa pattern
enum designCreationPattern: String {
    case factoryMethods, abstractFactory, builder, prototype, singleton
}

// Comportamiento pattern
enum designBehaviorPattern: String{
    case chainOfResponsability, command, iterator
}
