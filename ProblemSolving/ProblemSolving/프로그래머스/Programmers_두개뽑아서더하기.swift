//
//  Programmers_두개뽑아서더하기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/07.
//

import Foundation

class Programmers_두개뽑아서더하기 {
    func solution(_ numbers: [Int]) -> [Int] {
        var set = Set<Int>()
        set.sorted()
        for i in 0..<numbers.count {
//            guard i+1 < numbers.count else { break }
            for j in i+1..<numbers.count {
                set.insert(numbers[i] + numbers[j])
            }
        }
        return set.sorted()
    }
}
