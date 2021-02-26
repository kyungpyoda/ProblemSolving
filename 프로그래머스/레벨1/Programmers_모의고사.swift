//
//  Programmers_모의고사.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/17.
//

import Foundation

class Programmers_모의고사 {
    func solution(_ answers:[Int]) -> [Int] {
        let m = [
            [1,2,3,4,5],
            [2,1,2,3,2,4,2,5],
            [3,3,1,1,2,2,4,4,5,5]
        ]
        var count = [Int](repeating: 0, count: 3)
        for i in 0..<answers.count {
            (0...2).forEach {
                if m[$0][i%m[$0].count] == answers[i] {
                    count[$0] += 1
                }
            }
        }
        let max = count.max()
        return count.indices.filter {
            count[$0] == max
        }.map {
            $0 + 1
        }
    }
}
