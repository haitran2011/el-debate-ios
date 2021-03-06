//
//  FetchDebateResponseJSONMock.swift
//  ELDebate
//
//  Created by Pawel Urbanek on 12/05/2017.
//  Copyright © 2017 EL Passion. All rights reserved.
//

@testable import ELDebateFramework
import Foundation

class FetchDebateResponseJSONMock: JSONResponseProviding {

    func json(completionHandler: @escaping (ApiResponse) -> Void) {
        let apiResponse = ApiResponse(
            json: [
                "topic": "debate_topic",
                "answers": [
                    "positive": ["id": 122, "value": "yes"],
                    "negative": ["id": 123, "value": "no"],
                    "neutral":  ["id": 124, "value": "maybe"]
                ]
            ], error: nil)
            
        completionHandler(apiResponse)
    }
    
    func maybeJson(completionHandler: @escaping (ApiResponse) -> Void) {
        json(completionHandler: completionHandler)
    }
}
