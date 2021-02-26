//
//  Programmers_이진변환반복하기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/07.
//

import Foundation

class Programmers_이진변환반복하기 {
    var zeroCount = 0
    func solution(_ s:String) -> [Int] {
        var count = 0
        var str = s
        while str != "1" {
            str = convert(str)
            count += 1
        }
        return [count, zeroCount]
    }
    func convert(_ s: String) -> String {
        let oneCount = s.reduce(0, {$0 + ($1 == "1" ? 1 : 0)})
        zeroCount += s.count - oneCount
        return String(oneCount, radix: 2)
    }
}
