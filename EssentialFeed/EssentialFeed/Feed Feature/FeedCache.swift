//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Razee Hussein-Jamal on 2023-12-08.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
