//
//  Programmers_행렬의곱셈.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/08.
//

import Foundation

class Programmers_행렬의곱셈 {
    func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
        let rCount = arr1.count
        let cCount = arr2[0].count
        let tempCount = arr1[0].count
        var answer = [[Int]](repeating: [Int](repeating: 0, count: cCount), count: rCount)
        for r in 0..<rCount {
            for c in 0..<cCount {
                answer[r][c] = (0..<tempCount).reduce(0, {
                    $0 + arr1[r][$1]*arr2[$1][c]
                })
            }
        }
        return answer
    }
}
