//
//  FeedImageCache.swift
//  EssentialFeed
//
//  Created by Razee Hussein-Jamal on 2023-12-08.
//

import Foundation

public protocol FeedImageDataCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ data: Data, for url: URL, completion: @escaping (Result) -> Void)
}
