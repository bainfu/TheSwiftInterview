//
//  configure.swift
//  SwiftInterview
//
//  Created by Bain Kennedy on 9/25/24.
//

import Vapor

public func configure(_ app: Application) async throws {
    try routes(app)
}
