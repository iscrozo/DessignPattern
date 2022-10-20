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
//        testBehaviorPatther(typePattern: .visitor)
        
//        test of structural pattern
        testStructuralPatther(typePattern: .bridge)
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
        case .mediator:
            testMediator()
        case .memento:
            testMemento()
        case .observer:
            testObserver()
        case .state:
            testState()
        case .interpreter:
            testInterpreter()
        case .strategy:
            testStrategy()
        case .template:
            testTemplate()
        case .visitor:
            testVisitor()
        }
    }
    
    func testStructuralPatther( typePattern: designStructuralPattern) {
        switch typePattern {
        case .adapter:
            testAdapter()
        case .bridge:
            testBridge()
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

    func testMediator() {
        let mediator = ConcreteMediator()
        
        let user1 = ConcreteColleague1(m: mediator)
        let user2 = ConcreteColleague2(m: mediator)
        
        mediator.setColleague1(colleague1: user1)
        mediator.setColleague2(colleague2: user2)
        
        user1.send(message: "Hola, cómo estas?, soy el user 1")
        user2.send(message: "Estoy bien")
        
    }
    
    func testMemento(){
        let carataker = Carataker()
        var article = ArticleOriginator(id: 1, title: "Memento", text: "Memento es una pelicula")
        carataker.addMemento(memento: article.createMemento())
        
        article.text = "Memento es una pelicula de molam protagonizada por Guy Pearce"
        print(article.text)
        
        carataker.addMemento(memento: article.createMemento())
        
        let memento1: ArticleMemento = carataker.getMemento(index: 0)
        let memento2: ArticleMemento = carataker.getMemento(index: 1)
        
        article.restore(memento: memento1)
        print(article.text)
        
        article.restore(memento: memento2)
        print(article.text)
    }
    
    func testObserver(){
        let car = Car()
        let pedestrian = Pedestrian()
        var trafficLight = TrafficLight(status: "CAR_GREEN")
        let messagePublisher = MessagePublisher()
        
        messagePublisher.attach(o: car)
        messagePublisher.attach(o: pedestrian)
        messagePublisher.notifyUpdate(trafficLight: trafficLight)
        
        sleep(2)
        print("2 segundos")
        trafficLight = TrafficLight(status: "CAR_RED")
        messagePublisher.notifyUpdate(trafficLight: trafficLight)
    }
    
    func testState() {
        let context = MobileAlertStateContext()
        context.alert()
        context.alert()
        
        sleep(2)
        context.setState(state: Vibration())
        context.alert()
        context.alert()
        
        sleep(2)
        context.setState(state: Silent())
        context.alert()
        context.alert()
    }
    
    func testInterpreter() {
        let cero = TerminalExpression(text: "0")
        let uno = TerminalExpression(text: "1")
        
        let containsOneOrCero = OrExpression(expression1: cero, expression2: uno)
        print(containsOneOrCero.interpret(context: "cero"))
        print(containsOneOrCero.interpret(context: "cero, 0"))
        
        print(containsOneOrCero.interpret(context: "0"))
    }
    
    func testStrategy() {
        let context = Context(strategyTextFormatter: CapitalStrategyTextFormatter())
        context.publishText(text: "este texto sera convertido en MAYUS mediante algoritmo")
        
        let context1 = Context(strategyTextFormatter: LowerStratefyTextFormatter())
        context1.publishText(text: "ESTE TEXTO SERA CONVERTIDO EN MINUS")
    }
    
    func testTemplate(){
        let paymentMethodVisa = Visa()
        paymentMethodVisa.makePayment()
        
        let paymentMethodPaypal = Paypal()
        paymentMethodPaypal.makePayment()
    }
    
    func testVisitor(){
        let oferta = GassolineOffer()
        oferta.accept(visitor: BlackCreditCardVisitor())
    }
}

// MARK: structural pattern
extension ViewController {
    func testAdapter() {
        let adaptee = OperationAdaptee(a: 3, b: 4)
//        if (adaptee.sum() == 7) {
//            print("OK la suma es correcta")
//        }
        
        let target = OperationAdapter(adaptee: adaptee)
        if (target.getSum == "7") {
            print("OK la suma es correcta")
        } else {
            print("error en la suma es incorrecta")
        }
        
    }
    
    func testBridge() {
        var classic = ClassicCreditCard(creditCard: UnsecureCreditCard())
        classic.makeyPayment()
        
        classic = ClassicCreditCard(creditCard: SecureCreditCard())
        classic.makeyPayment()
    }
}

// creationa pattern
enum designCreationPattern: String {
    case factoryMethods, abstractFactory, builder, prototype, singleton
}

// Comportamiento pattern
enum designBehaviorPattern: String{
    case chainOfResponsability, command, iterator, mediator, memento, observer, state,
        interpreter, strategy, template, visitor
}

// structural pattern
enum designStructuralPattern: String {
    case adapter, bridge
}
