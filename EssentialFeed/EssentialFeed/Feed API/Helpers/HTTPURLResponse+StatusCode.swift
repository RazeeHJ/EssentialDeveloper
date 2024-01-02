//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by Razee Hussein-Jamal on 2023-11-21.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }
    
    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
