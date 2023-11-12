//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Razee Hussein-Jamal on 2023-11-12.
//

import Foundation

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }

    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
