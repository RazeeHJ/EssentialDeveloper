//
//  FeedImagePresenter.swift
//  EssentialFeediOS
//
//  Created by Razee Hussein-Jamal on 2023-10-28.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
