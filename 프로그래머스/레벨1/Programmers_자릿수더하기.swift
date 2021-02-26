//
//  Programmers_자릿수더하기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_자릿수더하기 {
    func solution(_ n:Int) -> Int {
        var num = n
        var answer = 0
        while num > 0 {
            answer += num % 10
            num /= 10
        }
        return answer
    }
}
