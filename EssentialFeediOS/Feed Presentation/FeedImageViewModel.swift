//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Razee Hussein-Jamal on 2023-10-19.
//

import Foundation
import EssentialFeed

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
