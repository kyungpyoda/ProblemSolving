//
//  Programmers_소수찾기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/19.
//

import Foundation

class Programmers_소수찾기 {
    func solution(_ n:Int) -> Int {
        var result: [Bool] = [Bool](repeating: true, count: n + 1)
        for i in 2...n where result[i] {
            var j = i
            while i * j <= n {
                result[i * j] = false
                j += 1
            }
        }
        return result.filter({ $0 == true }).count - 2 // 0, 1 제외
    }
}
