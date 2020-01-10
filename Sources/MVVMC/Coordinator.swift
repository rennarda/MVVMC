//
//  Coordinator.swift
//  
//
//  Created by AndyRennard on 10/01/2020.
//

import Foundation

public protocol ViewModelDelegate: class {
    func navigateWith<T>(_ model:T)
}

public extension ViewModelDelegate {
    func navigateWith<T>(_ model: T) {}
}

public protocol Coordinator: ViewModelDelegate {
    var presenter: Presenter { get set }
    func start()
    func start<T>(with model:T)
}
