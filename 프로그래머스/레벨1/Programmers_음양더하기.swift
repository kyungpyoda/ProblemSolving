//
//  Programmers_음양더하기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/17.
//

import Foundation

class Programmers_음양더하기 {
    func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
        return zip(absolutes, signs).reduce(0) {
            $0 + ($1.1 ? $1.0 : -$1.0)
        }
    }
}
