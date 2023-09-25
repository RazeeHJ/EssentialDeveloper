//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Razee Hussein-Jamal on 2023-07-06.
//

import Foundation

 struct RemoteFeedItem: Decodable {
     let id: UUID
     let description: String?
     let location: String?
     let image: URL
}
