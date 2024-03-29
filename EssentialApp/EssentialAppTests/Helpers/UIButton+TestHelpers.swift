//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Razee Hussein-Jamal on 2023-10-18.
//

import UIKit

extension UIButton {
    func simulateTap() {
        allTargets.forEach { target in
            simulate(event: .touchUpInside)
        }
    }
}
