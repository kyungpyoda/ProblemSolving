//
//  Programmers_다트게임.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/19.
//

import Foundation

class Programmers_다트게임 {
    func solution(_ dartResult:String) -> Int {
        var numbers = dartResult.components(separatedBy: CharacterSet.decimalDigits.inverted).filter({ $0 != ""}).map({ Int($0)! })
        let symbols = dartResult.components(separatedBy: CharacterSet.decimalDigits).filter({ $0 != "" })
        for i in 0..<numbers.count {
            switch symbols[i].first {
            case "D":
                numbers[i] = numbers[i] * numbers[i]
            case "T":
                numbers[i] = numbers[i] * numbers[i] * numbers[i]
            default:
                break
            }
            guard symbols[i].count != 1 else { continue }
            if symbols[i].last! == "*" {
                numbers[i] *= 2
                if i != 0 {
                    numbers[i - 1] *= 2
                }
            } else if symbols[i].last! == "#" {
                numbers[i] *= -1
            }
        }
        return numbers.reduce(0, +)
    }
}
