//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Razee Hussein-Jamal on 2023-11-12.
//

import Foundation

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
