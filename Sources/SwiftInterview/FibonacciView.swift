//
//  FibonacciView.swift
//  SwiftInterview
//
//  Created by Bain Kennedy on 9/25/24.
//
import SwiftUI

struct FibonacciView: View {
    var index: Int
    
    @State var value: String?
    
    var body: some View {
        VStack {
            Text("Index: \(index)")
            Text("Value: \(value ?? "TBD")")
        }
    }
}

#Preview {
    FibonacciView(index: 0)
}

