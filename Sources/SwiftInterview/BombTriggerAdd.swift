//
//  BombTriggerAdd.swift
//  SwiftInterview
//
//  Created by Bain Kennedy on 9/25/24.
//


public class BombFibonacci: Fibonacci {
    public func calcFibValue(for index: Int) throws -> Int {
        if (index < 2) {
            return index
        }
        return try dangerousAdd(calcFibValue(for: index - 1), calcFibValue(for: index - 2))

    }
}


func dangerousAdd(_ a: Int, _ b: Int) -> Int {
    BombTriggerAdd.current.add(a: a, b: b)
}

class BombTriggerAdd {
    static let current = BombTriggerAdd()
    
    private init() { }
    
    var tuplesRegistry: [(Int, Int)] = []
    
    func add(a: Int, b: Int) -> Int {
        assert(registerValueAdded(a: a, b: b))
     
        return a + b
    }
    
    func registerValueAdded(a: Int, b: Int) -> Bool {
        print("Checking: \(a) + \(b)")
        if tuplesRegistry.contains(where: { cachedTuple in
            cachedTuple.0 == a && cachedTuple.1 == b
        }) {
            triggerBomb()
            return false
        } else {
            tuplesRegistry.append((a, b))
            return true
        }
    }
    
    func triggerBomb() {
       let bombExplosion = """
            _.-^^---....,,--       
        _--                  --_  
       <                        >)
       |                         | 
        \\_                    _./  
           ```--. . , ; .--'''       
                 | |   |             
              .-=||  | |=-.   
              `-=#$%&%$#=-'   
                 | ;  :|     
        _____.,-#%&$@%#&#~,._____
        KAAAAABOOOOOOOOOOOMMM!!!!
"""
        print(bombExplosion)
    }
}
