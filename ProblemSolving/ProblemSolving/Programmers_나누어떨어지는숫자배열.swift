//
//  Programmers_나누어떨어지는숫자배열.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/17.
//

import Foundation

class Programmers_나누어떨어지는숫자배열 {
    func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
        let result = arr.filter {
            $0 % divisor == 0
        }.sorted()
        return result.count != 0 ? result : [-1]
    }
}
