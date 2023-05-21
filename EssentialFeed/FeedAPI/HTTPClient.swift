//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Razee Hussein-Jamal on 2023-05-21.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
