//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Razee Hussein-Jamal on 2023-04-16.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>

    func load(completion: @escaping (Result) -> Void)
}
