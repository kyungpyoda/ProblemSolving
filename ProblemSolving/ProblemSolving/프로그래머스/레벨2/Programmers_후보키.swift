//
//  Programmers_후보키.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/16.
//

import Foundation

class Programmers_후보키 {
    var cCount = 0
    var rCount = 0
    var relations = [[String]]()
    var keys = Set<Set<Int>>()
    func solution(_ relation:[[String]]) -> Int {
        cCount = relation[0].count
        rCount = relation.count
        relations = relation
        for n in 1...cCount {
            combination(shouldSelect: n, currentIndex: 0, selected: [])
        }
        return keys.count
    }
    func combination(shouldSelect: Int, currentIndex: Int, selected: [Int]) {
        if shouldSelect == 0 {
            for k in keys {
                if k.intersection(selected) == k { return }
            }
            var set = Set<[String]>()
            for r in 0..<rCount {
                let temp = selected.map({
                    relations[r][$0]
                })
                guard !set.contains(temp) else { return }
                set.insert(temp)
            }
            print(selected)
            keys.insert(Set(selected))
        } else if currentIndex == cCount {
            return
        } else {
            combination(shouldSelect: shouldSelect-1, currentIndex: currentIndex+1, selected: selected+[currentIndex])
            combination(shouldSelect: shouldSelect, currentIndex: currentIndex+1, selected: selected)
        }
    }
}
