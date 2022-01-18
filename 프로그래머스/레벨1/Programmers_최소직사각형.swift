//
//  Programmers_최소직사각형.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/17.
//

import Foundation
class Programmers_최소직사각형 {
    func solution(_ sizes:[[Int]]) -> Int {
        let result = sizes.reduce((0, 0)) {
            let big = max($1[0], $1[1])
            let small = min($1[0], $1[1])
            return (max($0.0, big), max($0.1, small))
        }
        return result.0 * result.1
    }
}
