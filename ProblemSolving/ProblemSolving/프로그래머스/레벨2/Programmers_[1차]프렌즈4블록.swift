//
//  Programmers_[1차]프렌즈4블록.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/14.
//

import Foundation

class Programmers_프렌즈4블록 {
    func solution(_ m:Int, _ n:Int, _ board:[String]) -> Int {
        var answer = 0
        var currentBoard = board.map{ Array($0) }
        var flags = [[Bool]](repeating: [Bool](repeating: false, count: n), count: m)
        var x = 0
        repeat {
            x = answer
            for r in 0..<m-1 {
                for c in 0..<n-1 where currentBoard[r][c] != "." {
                    if currentBoard[r][c] == currentBoard[r][c+1]
                        && currentBoard[r][c] == currentBoard[r+1][c]
                        && currentBoard[r][c] == currentBoard[r+1][c+1] {
                        flags[r][c] = true
                        flags[r][c+1] = true
                        flags[r+1][c] = true
                        flags[r+1][c+1] = true
                    }
                }
            }
            for c in 0..<n {
                var removedCount = 0
                for r in 0..<m {
                    if flags[m-r-1][c] {
                        removedCount += 1
                        currentBoard[m-r-1][c] = "."
                        flags[m-r-1][c] = false
                    } else if removedCount != 0 {
                        currentBoard[m-r-1+removedCount][c] = currentBoard[m-r-1][c]
                        currentBoard[m-r-1][c] = "."
                    }
                }
                answer += removedCount
            }
        } while x != answer
        return answer
    }
}
