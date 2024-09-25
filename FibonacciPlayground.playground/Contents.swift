@testable import SwiftInterview
import PlaygroundSupport
import Foundation

PlaygroundPage.current.needsIndefiniteExecution = true

var welcome = "Welcome to Fib Playground"

let fib = BrokenFibonacci()

do {
    try fib.calcFibValue(for: 0)
    try fib.calcFibValue(for: 1)
    try fib.calcFibValue(for: 2)
    try fib.calcFibValue(for: 5)
    try fib.calcFibValue(for: 10)
    try fib.calcFibValue(for: 20)
    try fib.calcFibValue(for: 30)
    
    
} catch FibonacciErrors.unknown {
    var error = "Error Fetching fib value"
    print(error)
}


var end = "The End"
