//
//  Programmers_최솟값만들기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/08.
//

import Foundation

class Programmers_최솟값만들기 {
    func solution(_ A:[Int], _ B:[Int]) -> Int {
        return zip(A.sorted(by: >), B.sorted()).reduce(0, {$0 + $1.0*$1.1})
    }
}
