//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Razee Hussein-Jamal on 2023-11-12.
//

import Foundation

public struct FeedErrorViewModel {
    public let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
