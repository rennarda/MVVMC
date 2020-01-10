//
//  ReusableIdentifying+Extensions.swift
//
//

import UIKit

// MARK: - Use for TableViews and Collections views, it will return the reuseIdentity. always use the name of the class as identifier to make this work
public protocol ReuseIdentifying {
	/// reuseIdentifer, we are asusming it's the same name as the class
	static var reuseIdentifier: String { get }
}

extension ReuseIdentifying {
	
	/// reuseIdentifer, we are asusming it's the same name as the class
	public static var reuseIdentifier: String {
		return String(describing: Self.self)
	}
}

extension UITableViewCell: ReuseIdentifying {}
