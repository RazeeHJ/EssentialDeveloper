//
//  FeedLocalizationTests.swift
//  EssentialFeediOSTests
//
//  Created by Razee Hussein-Jamal on 2023-11-03.
//

import XCTest
import EssentialFeed

class FeedLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Feed"
        let bundle = Bundle(for: FeedPresenter.self)
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
}
