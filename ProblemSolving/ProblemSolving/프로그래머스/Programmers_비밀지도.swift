//
//  Programmers_비밀지도.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/19.
//

import Foundation

class Programmers_비밀지도 {
    func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
        var answer: [String] = []
        for i in 0..<n {
            let s = String(arr1[i] | arr2[i], radix: 2)
            var result = s.replacingOccurrences(of: "0", with: " ")
            result = result.replacingOccurrences(of: "1", with: "#")
            result = String(repeating: " ", count: n - result.count) + result
            answer.append(result)
        }
        return answer
    }
}
