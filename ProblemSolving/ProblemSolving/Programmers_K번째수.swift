//
//  Programmers_K번째수.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/16.
//

import Foundation

class Programmers_K번째수 {
    func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
        var result: [Int] = []
        for command in commands {
            let subArray = Array(array[command[0]-1..<command[1]]).sorted()
            result.append(subArray[command[2]-1])
        }
        return result
    }
}
