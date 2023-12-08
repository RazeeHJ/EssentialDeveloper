//
//  FeedLoaderStub.swift
//  EssentialAppTests
//
//  Created by Razee Hussein-Jamal on 2023-12-08.
//

import EssentialFeed

class FeedLoaderStub: FeedLoader {
    private let result: FeedLoader.Result
    
    init(result: FeedLoader.Result) {
        self.result = result
    }
    
    func load(completion: @escaping (FeedLoader.Result) -> Void) {
        completion(result)
    }
}
