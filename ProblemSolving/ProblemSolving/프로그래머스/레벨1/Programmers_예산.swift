//
//  Programmers_예산.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_예산 {
    func solution(_ d:[Int], _ budget:Int) -> Int {
        var count = 0
        var budget = budget
        for d in d.sorted() {
            guard d <= budget else { break }
            budget -= d
            count += 1
        }
        return count
    }
}
