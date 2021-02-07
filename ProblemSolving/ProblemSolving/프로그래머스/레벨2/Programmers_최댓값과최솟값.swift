//
//  Programmers_최댓값과최솟값.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/07.
//

import Foundation

class Programmers_최댓값과최솟값 {
    func solution(_ s:String) -> String {
        var min = Int.max
        var max = Int.min
        s.split(separator: " ").forEach {
            let num = Int($0)!
            if num > max { max = num }
            if num < min { min = num }
        }
        return "\(min) \(max)"
    }
}
