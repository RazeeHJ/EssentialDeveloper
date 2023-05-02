//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Razee Hussein-Jamal on 2023-04-16.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
