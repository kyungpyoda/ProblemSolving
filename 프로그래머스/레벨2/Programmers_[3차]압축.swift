//
//  Programmers_[3차]압축.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/25.
//

import Foundation

class Programmers_압축 {
    func solution(_ msg:String) -> [Int] {
        var answer = [Int]()
        var next = 1
        var dict: [String: Int] = [:]
        for c in "ABCDEFGHIJKLMNOPQRSTUVWXYZ" {
            dict[String(c)] = next
            next += 1
        }
        let arr = msg.map({ String($0) })
        var i = 0
        var temp = arr[0]
        while i < arr.count {
            guard i != arr.count-1 else {
                answer.append(dict[temp]!)
                break
            }
            if dict[temp+arr[i+1]] == nil {
                answer.append(dict[temp]!)
                dict[temp+arr[i+1]] = next
                next += 1
                temp = arr[i+1]
            } else {
                temp += arr[i+1]
            }
            i += 1
        }
        return answer
    }
}
