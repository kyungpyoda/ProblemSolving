//
//  Programmers_두정수사이의합.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/17.
//

import Foundation

class Programmers_두정수사이의합 {
    func solution(_ a:Int, _ b:Int) -> Int64 {
        let n = a < b ? (b - a + 1) : (a - b + 1)
        let i = a < b ? a - 1 : b - 1
        return Int64(n * (n + 1) / 2 + n * i)
    }
}
