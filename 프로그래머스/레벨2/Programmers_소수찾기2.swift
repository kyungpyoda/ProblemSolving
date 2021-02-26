//
//  Programmers_소수찾기2.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/29.
//

import Foundation

class Programmers_소수찾기2 {
    var arr = Set<Int>()
    var origin = [Character]()
    var v = [Bool]()
    var temp = [Character]()
    var N = 0
    func solution(_ numbers:String) -> Int {
        N = numbers.count
        origin = Array(numbers)
        for r in 1...N {
            v = [Bool](repeating: false, count: N)
            permutate(current: 0, r: r)
        }
        let max = arr.max()!
        var prime = [Bool](repeating: true, count: max + 1)
        prime[0] = false
        prime[1] = false
        for i in 2...max where prime[i] {
            var j = 2
            while i*j <= max {
                prime[i*j] = false
                j += 1
            }
        }
        return arr.reduce(0, {
            $0 + (prime[$1] ? 1 : 0)
        })
    }
    
    func permutate(current: Int, r: Int) {
        if current == r {
            arr.insert(Int(String(temp))!)
            print(String(temp))
            return
        }
        for i in 0..<N where !v[i] {
            v[i] = true
            temp.append(origin[i])
            permutate(current: current+1, r: r)
            temp.popLast()
            v[i] = false
        }
    }
}
