//
//  Programmers_위장.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/05.
//

import Foundation

class Programmers_위장 {
    var arr = [Int]()
    var answer = 0
    func solution(_ clothes:[[String]]) -> Int {
        var dict: [String: Int] = [:]
        for c in clothes {
            dict[c[1]] = (dict[c[1]] ?? 0) + 1
        }
//        arr = dict.values.map({$0})
//        for i in 1...arr.count {
//            combination(shouldSelect: i, index: 0, selected: [])
//        }
//        return answer
        let arr: [Int] = dict.values.map({$0 + 1})
        let temp = arr.reduce(1, *)
        return temp - 1
    }

    func combination(shouldSelect: Int, index: Int, selected: [Int]) {
        if shouldSelect == 0 {
            print(selected)
            answer += selected.reduce(1, *)
            return
        } else if index == arr.count {
            return
        } else {
            combination(shouldSelect: shouldSelect - 1, index: index + 1, selected: selected + [arr[index]])
            combination(shouldSelect: shouldSelect, index: index + 1, selected: selected)
        }
    }
}
