//
//  Fibonacci.swift
//  ios-swift-interview
//
//  Created by Bain Kennedy on 9/25/24.
//

public enum FibonacciErrors: Error {
    case illegalArguement
    case outOfBounds
    case unknown
}

public protocol Fibonacci {
    func calcFibValue(for index: Int) throws -> Int
}

public class BrokenFibonacci: Fibonacci {
    public func calcFibValue(for index: Int) throws -> Int {
        throw FibonacciErrors.unknown
    }
}

