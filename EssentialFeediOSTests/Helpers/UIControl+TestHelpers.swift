//
//  UIControl+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Razee Hussein-Jamal on 2023-10-18.
//

import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
