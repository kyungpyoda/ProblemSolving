//
//  Programmers_수식최대화.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/11.
//

import Foundation

class Programmers_수식최대화 {
    var v = [Bool](repeating: false, count: 3)
    var answer = [Int64]()
    var operators = ["*", "+", "-"]
    var targets = [String]()
    var arr = [String]()
    func solution(_ expression:String) -> Int64 {
        var temp = ""
        expression.forEach({
            if $0 == "-" || $0 == "*" || $0 == "+" {
                arr.append(temp)
                arr.append(String($0))
                temp = ""
            } else {
                temp += String($0)
            }
        })
        arr.append(temp)
        permutation(current: 0, r: 3)
        return answer.max()!
    }
    
    func permutation(current: Int, r: Int) {
        if current == r {
            var x = arr
            for c in targets {
                x = calculate(arr: x, target: c)
            }
            answer.append(abs(Int64(x[0])!))
            return
        }
        for i in 0..<3 where !v[i] {
            v[i] = true
            targets.append(operators[i])
            permutation(current: current+1, r: r)
            targets.popLast()
            v[i] = false
        }
    }
    
    func calculate(arr: [String], target: String) -> [String] {
        var i = 0
        var temp = arr
        while i < temp.count {
            guard temp[i] == target else {
                i += 1
                continue
            }
            var t = ""
            switch temp[i] {
            case "*":
                t = String(Int64(temp[i-1])! * Int64(temp[i+1])!)
            case "-":
                t = String(Int64(temp[i-1])! - Int64(temp[i+1])!)
            case "+":
                t = String(Int64(temp[i-1])! + Int64(temp[i+1])!)
            default:
                break
            }
            temp[i-1] = t
            for _ in 0..<2 {
                temp.remove(at: i)
            }
        }
        return temp
    }
}
