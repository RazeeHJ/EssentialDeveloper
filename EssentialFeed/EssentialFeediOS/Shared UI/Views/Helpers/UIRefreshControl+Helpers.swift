//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Razee Hussein-Jamal on 2023-11-12.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
