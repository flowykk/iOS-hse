//
//  Router.swift
//  ArchitecturesShowcase
//
//  Created by Данила on 17.11.2023.
//

protocol RoutingLogic: AnyObject {
    func goToStart()
}

final class Router: RoutingLogic {
    weak var vc: CSViewController?
    
    func goToStart() {
        vc?.present(MVCViewController(), animated: false)
    }
}
