//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Razee Hussein-Jamal on 2023-04-16.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {    
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
