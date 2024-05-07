//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Razee Hussein-Jamal on 2023-10-18.
//

import Foundation

public protocol FeedImageDataLoader {    
    func loadImageData(from url: URL) throws -> Data
}
