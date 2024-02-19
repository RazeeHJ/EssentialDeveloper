//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Razee Hussein-Jamal on 2023-10-29.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
