//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Razee Hussein-Jamal on 2023-04-16.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
