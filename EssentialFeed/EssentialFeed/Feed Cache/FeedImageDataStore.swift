//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Razee Hussein-Jamal on 2023-11-25.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
