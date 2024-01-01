//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Razee Hussein-Jamal on 2024-01-01.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
