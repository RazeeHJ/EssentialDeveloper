//
//  FeedEndpoint.swift
//  EssentialFeed
//
//  Created by Razee Hussein-Jamal on 2024-04-09.
//

import Foundation

public enum FeedEndpoint {
    case get

    public func url(baseURL: URL) -> URL {
        switch self {
        case .get:
            return baseURL.appendingPathComponent("/v1/feed")
        }
    }
}
