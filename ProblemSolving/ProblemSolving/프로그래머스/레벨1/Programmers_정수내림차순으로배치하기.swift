//
//  Programmers_정수내림차순으로배치하기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_정수내림차순으로배치하기 {
    func solution(_ n:Int64) -> Int64 {
        return Int64(String(String(n).sorted(by: >)))!
    }
}
