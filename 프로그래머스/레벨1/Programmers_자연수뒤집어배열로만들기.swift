//
//  Programmers_자연수뒤집어배열로만들기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_자연수뒤집어배열로만들기 {
    func solution(_ n:Int64) -> [Int] {
        return String(n).map {
            Int(String($0))!
        }.reversed()
    }
}
