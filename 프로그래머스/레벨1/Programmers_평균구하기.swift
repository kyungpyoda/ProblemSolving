//
//  Programmers_평균구하기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_평균구하기 {
    func solution(_ arr:[Int]) -> Double {
        return Double(arr.reduce(0, +)) / Double(arr.count)
    }
}
