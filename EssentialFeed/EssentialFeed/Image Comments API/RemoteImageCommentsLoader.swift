//
//  RemoteImageCommentsLoader.swift
//  EssentialFeed
//
//  Created by Razee Hussein-Jamal on 2024-01-04.
//

import Foundation

public typealias RemoteImageCommentsLoader = RemoteLoader<[ImageComment]>

public extension RemoteImageCommentsLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: ImageCommentsMapper.map)
    }
}
