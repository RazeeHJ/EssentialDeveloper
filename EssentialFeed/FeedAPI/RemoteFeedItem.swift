//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Razee Hussein-Jamal on 2023-07-06.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
