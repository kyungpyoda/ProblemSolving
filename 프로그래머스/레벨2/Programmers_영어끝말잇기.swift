//
//  Programmers_영어끝말잇기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/12.
//

import Foundation

class Programmers_영어끝말잇기 {
    func solution(_ n:Int, _ words:[String]) -> [Int] {
        var set = Set<String>()
        for (i, word) in words.enumerated() {
            if set.contains(word) || (i != 0 && words[i-1].last! != word.first!) {
                return [(i%n)+1, (i/n)+1]
            }
            set.insert(word)
        }
        return [0,0]
    }
}
