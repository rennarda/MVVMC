//
//  Presentable.swift
//  
//
//  Created by AndyRennard on 10/01/2020.
//

import UIKit

public protocol ViewModel { }

public protocol Presentable: UIViewController {
    associatedtype ViewModel
    var viewModel: ViewModel? { get set }
    func configure(viewModel: ViewModel)
    func configureUI()
    func configureBindings()
}

public extension Presentable {
    func configure(viewModel: ViewModel){
        self.viewModel = viewModel
        configureUI()
        configureBindings()
    }
}
