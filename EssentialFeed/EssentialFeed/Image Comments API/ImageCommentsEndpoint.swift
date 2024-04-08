//
//  ImageCommentsEndpoint.swift
//  EssentialFeed
//
//  Created by Razee Hussein-Jamal on 2024-04-09.
//

import Foundation

public enum ImageCommentsEndpoint {
    case get(UUID)

    public func url(baseURL: URL) -> URL {
        switch self {
        case let .get(id):
            return baseURL.appendingPathComponent("/v1/image/\(id)/comments")
        }
    }
}
