//
//  Programmers_짝지어제거하기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/12.
//

import Foundation

class Programmers_짝지어제거하기 {
    func solution(_ s:String) -> Int {
        var stack = [Character]()
        for c in s {
            if let last = stack.last, last == c {
                stack.popLast()
            } else {
                stack.append(c)
            }
        }
        return stack.isEmpty ? 1 : 0
    }
}
