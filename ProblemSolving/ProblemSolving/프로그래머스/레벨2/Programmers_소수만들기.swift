//
//  Programmers_소수만들기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/04.
//

import Foundation

class Programmers_소수만들기 {
    func solution(_ nums:[Int]) -> Int {
        let N = nums.count
        let max = nums.sorted(by: >).prefix(3).reduce(0, +)
        let sqrtMax = Int(sqrt(Double(max)))
        var prime = [Bool](repeating: true, count: max+1)
        for i in 2...sqrtMax where prime[i] {
            var j = 2
            while i*j <= max {
                prime[i*j] = false
                j += 1
            }
        }
        var answer = 0
        for a in 0..<N-2 {
            for b in a+1..<N-1 {
                for c in b+1..<N {
                    if prime[nums[a]+nums[b]+nums[c]] {
                        answer += 1
                    }
                }
            }
        }
        return answer
    }
}
