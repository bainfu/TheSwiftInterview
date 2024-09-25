//
//  FibonacciTests.swift
//  SwiftInterview
//
//  Created by Bain Kennedy on 9/25/24.
//

import Testing
@testable import SwiftInterview


@Suite("Basic Fibonacci Tests")
struct FibonacciTests {
    
    @Test(arguments: zip([0, 1, 2, 3, 4, 5, 10], [0, 1, 1, 2, 3, 5, 55]))
    func testBrokenFibonacci(index: Int, value: Int) async throws {
        let fib = BrokenFibonacci()
        withKnownIssue {
            try #expect(fib.calcFibValue(for: index) == value)
        }
    }
}

