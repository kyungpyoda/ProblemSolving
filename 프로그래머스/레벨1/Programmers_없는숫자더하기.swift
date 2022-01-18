//
//  Programmers_없는숫자더하기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/16.
//

import Foundation

class Programmers_없는숫자더하기 {
    func solution(_ numbers:[Int]) -> Int {
        return (0...9).reduce(0, +) - numbers.reduce(0, +)
    }
}
