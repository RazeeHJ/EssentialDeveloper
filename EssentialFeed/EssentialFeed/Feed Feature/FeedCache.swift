//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Razee Hussein-Jamal on 2023-12-08.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
