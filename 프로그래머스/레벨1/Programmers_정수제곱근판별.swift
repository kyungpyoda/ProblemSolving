//
//  Programmers_정수제곱근판별.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_정수제곱근판별 {
    func solution(_ n:Int64) -> Int64 {
        let temp = Int64(Double(n).squareRoot())
        if n == temp * temp {
            return (temp + 1) * (temp + 1)
        } else {
            return -1
        }
    }
}
