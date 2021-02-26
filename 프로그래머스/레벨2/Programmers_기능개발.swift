//
//  Programmers_기능개발.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/25.
//

import Foundation

class Programmers_기능개발 {
    func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
        let cost: [Int] = (0..<progresses.count).map {
            let a = (100 - progresses[$0]) / speeds[$0]
            let b = (100 - progresses[$0]) % speeds[$0] == 0 ? 0 : 1
            return a + b
        }
        print(cost)
        var count = 0
        var answer: [Int] = []
        var temp = cost.first!
        for c in cost {
            if c <= temp {
                count += 1
            } else {
                answer.append(count)
                temp = c
                count = 1
            }
        }
        answer.append(count)
        return answer
    }
}
