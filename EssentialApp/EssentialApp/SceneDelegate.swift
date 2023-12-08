//
//  SceneDelegate.swift
//  EssentialApp
//
//  Created by Razee Hussein-Jamal on 2023-11-30.
//

import UIKit
import EssentialFeed
import EssentialFeediOS
import CoreData

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
        
        let remoteUrl = URL(string: "https://ile-api.essentialdeveloper.com/essential-feed/v1/feed")!
        let session = URLSession(configuration: .ephemeral)
        let remoteClient = URLSessionHTTPClient(session: session)
        let remoteFeedLoader = RemoteFeedLoader(url: remoteUrl, client: remoteClient)
        let remoteImageLoader = RemoteFeedImageDataLoader(client: remoteClient)
        
        let localStoreURL = NSPersistentContainer
            .defaultDirectoryURL()
            .appendingPathComponent("feed-store.sqlite")
        
        let localStore = try! CoreDataFeedStore(storeURL: localStoreURL)
        let localFeedLoader = LocalFeedLoader(store: localStore, currentDate: Date.init)
        let localImageLoader = LocalFeedImageDataLoader(store: localStore)
        
        window?.rootViewController = FeedUIComposer.feedComposedWith(
            feedLoader: FeedLoaderWithFallbackComposite(
                primary: remoteFeedLoader,
                fallback: FeedLoaderWithFallbackComposite(
                    primary: remoteFeedLoader,
                    fallback: localFeedLoader)),
            imageLoader: FeedImageDataLoaderWithFallbackComposite(
                primary: localImageLoader,
                fallback: remoteImageLoader))
    }
}

