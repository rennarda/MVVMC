//
//  Presenter.swift
//  
//
//  Created by AndyRennard on 10/01/2020.
//

import UIKit

public protocol Presenter: UIViewController {
    func display(_ viewController:UIViewController, modally: Bool, animated: Bool, preventSwipeToDismiss: Bool, completion: (()->Void)?)
    func finishDisplaying(animated: Bool)
}

extension UIViewController: Presenter {
    @objc public func display(_ viewController: UIViewController, modally: Bool = false, animated: Bool = true, preventSwipeToDismiss: Bool = false, completion: (()->Void)? = nil) {
        if modally {
            present(viewController, animated: animated, completion: completion)
            if #available(iOS 13, *) {
                viewController.isModalInPresentation = preventSwipeToDismiss
            }
        } else {
            navigationController?.pushViewController(viewController, animated: animated)
        }
    }
    
    @objc public func finishDisplaying(animated: Bool = true) {
        if let presentedVC = self.presentedViewController{
            presentedVC.dismiss(animated: animated)
        } else {
            navigationController?.popViewController(animated: animated)
        }
    }
}

extension UINavigationController {
    @objc override public func display(_ viewController: UIViewController, modally: Bool = false, animated: Bool = true, preventSwipeToDismiss: Bool = false, completion: (()->Void)? = nil) {
        if self.viewControllers.count == 0  {
            self.viewControllers = [viewController]
        } else if modally {
            present(viewController, animated: animated, completion: completion)
            
            if #available(iOS 13, *) {
                viewController.isModalInPresentation = preventSwipeToDismiss
            }
            
        } else {
            pushViewController(viewController, animated: animated)
        }
    }
    
    @objc override public func finishDisplaying(animated: Bool = true) {
        popViewController(animated: animated)
    }
    
}

public class FakePresenter: UIViewController {
    public var didPresent = false
    public var viewController: UIViewController? = nil
    
    override public func display(_ viewController: UIViewController, modally: Bool = false, animated: Bool = true, preventSwipeToDismiss: Bool = false, completion: (() -> Void)? = nil) {
        didPresent = true
        self.viewController = viewController
    }
}
