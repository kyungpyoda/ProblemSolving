//
//  Programmers_최대공약수와최소공배수.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_최대공약수와최소공배수 {
    func solution(_ n:Int, _ m:Int) -> [Int] {
        var result: [Int] = []
        let a = n < m ? n : m
        let b = n < m ? m : n
        for i in (1...a).filter({a % $0 == 0}).reversed() {
            if b % i == 0 {
                result.append(i)
                break
            }
        }
        result.append(a * b / result[0])
        return result
    }
}
