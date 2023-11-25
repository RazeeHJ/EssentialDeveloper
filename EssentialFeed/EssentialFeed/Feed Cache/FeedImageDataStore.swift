//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Razee Hussein-Jamal on 2023-11-25.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    
    func retrieve(dataForURL url: URL, completion: @escaping (FeedImageDataStore.Result) -> Void)
}
