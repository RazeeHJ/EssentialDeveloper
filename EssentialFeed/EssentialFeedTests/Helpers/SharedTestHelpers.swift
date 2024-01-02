//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Razee Hussein-Jamal on 2023-08-30.
//

import Foundation
import EssentialFeed

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 1)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}

func anyData() -> Data {
    return Data("any data".utf8)
}
