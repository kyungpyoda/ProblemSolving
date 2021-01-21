//
//  Programmers_행렬의덧셈.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_행렬의덧셈 {
    func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
        var answer = [[Int]](repeating: [Int](repeating: 0, count: arr1.first?.count ?? 0), count: arr1.count)
        for i in 0..<arr1.count {
            guard let n = arr1.first?.count else { continue }
            for j in 0..<n {
                answer[i][j] = arr1[i][j] + arr2[i][j]
            }
        }
        return answer
//        짧은 답
//        return zip(arr1, arr2).map { zip($0.0, $0.1).map { $0.0 + $0.1 } }
    }
}
