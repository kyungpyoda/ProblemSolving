//
//  Programmers_N개의최소공배수.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/11.
//

import Foundation

class Programmers_N개의최소공배수 {
    func solution(_ arr:[Int]) -> Int {
        var temp = arr
        var answer = [Int]()
        while true {
            let d = divisor(of: temp)
            guard d != 1 else { break }
            answer.append(d)
            temp = temp.map {
                $0 % d == 0 ? $0 / d : $0
            }
        }
        return answer.reduce(1, *) * temp.reduce(1, *)
    }
    func divisor(of arr: [Int]) -> Int {
        guard let max = arr.max(), max >= 2 else { return 1 }
        for i in 2...max {
            var count = 0
            for n in arr where n % i == 0 {
                count += 1
                if count >= 2 { return i }
            }
        }
        return 1
    }
}
