//
//  UIViewController+StoryboardInstance.swift
//
//

import UIKit

public extension UIViewController {
	
	///  Instantiate a view controller from a storyboard
	///
	/// - Parameter appStoryboard: A storyboard in which to find the view controller
	/// - Returns: itself
    static func instantiateFromAppStoryboard(appStoryboards: UIStoryboard,
                                             bundle: Bundle = Bundle.main
     ) -> Self? {
        return appStoryboards.viewController(viewControllerClass: self, bundle: bundle)
	}
}

public extension UIViewController {
    class var storyboardID : String {
		return "\(self)"
	}
}
