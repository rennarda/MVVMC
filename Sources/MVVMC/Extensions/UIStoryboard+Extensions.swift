//
//  File.swift
//  
//
//  Created by AndyRennard on 10/01/2020.
//

import UIKit

extension UIStoryboard {

    /// Instantiate a view controller from the storyboard
    ///
    /// - Parameter viewControllerClass: viewController type
    /// - Returns: instance
    func viewController<T: UIViewController>(viewControllerClass: T.Type, bundle: Bundle = Bundle.main) -> T?
    {
        let storyboardID = (viewControllerClass as UIViewController.Type).storyboardID
        return self.instantiateViewController(withIdentifier: storyboardID) as? T
    }

    
}

    
