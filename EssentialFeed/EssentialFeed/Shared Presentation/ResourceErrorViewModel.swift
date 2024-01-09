//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Razee Hussein-Jamal on 2023-11-12.
//

import Foundation

public struct ResourceErrorViewModel {
    public let message: String?
    
    static var noError: ResourceErrorViewModel {
        return ResourceErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> ResourceErrorViewModel {
        return ResourceErrorViewModel(message: message)
    }
}
