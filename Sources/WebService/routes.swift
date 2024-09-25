//
//  routes.swift
//  SwiftInterview
//
//  Created by Bain Kennedy on 9/25/24.
//

import Vapor


struct FibValue: Content {
    let index: Int
    let value: Int
}

func routes(_ app: Application) throws {
    app.get { req async in
        "It Works"
    }
    
    app.get("hello") { req async -> String in
        "Hello World!"
    }
    
    
    
    app.get("fib", ":index") { req async throws -> FibValue in
        guard let indexString = req.parameters.get("index"),
              let index = Int(indexString),
              index >= 0
        else {
            throw Abort(.badRequest, reason: "Invalid Index")
        }
        
        var returnValue = 0
        if index < 2 {
            returnValue = index
        } else {
            var (a, b) = (0, 1)
            for _ in 2...index {
                (a, b) = (b, a + b)
            }
            
            returnValue = b
        }
        
        let fibValue = FibValue(index: index, value: returnValue)
        return fibValue
    }
}
