//
//  Programmers_약수의개수와덧셈.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/17.
//
import Foundation
class Programmers_약수의개수와덧셈 {
    func solution(_ left:Int, _ right:Int) -> Int {
        var arr: [Int] = [Int](repeating: 0, count: right + 1)

        for i in 1...right {
            var j = 1
            while i * j <= right {
                arr[i * j] += 1
                j += 1
            }
        }

        return (left...right).reduce(0) {
            $0 + (arr[$1] % 2 == 0 ? $1 : -$1)
        }
    }
}
