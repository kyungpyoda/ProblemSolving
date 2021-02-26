//
//  Programmers_가장큰정사각형찾기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/05.
//

import Foundation

class Programmers_가장큰정사각형찾기 {
    var b = [[Int]]()
    var rCount = 0
    var cCount = 0
    var visited = [[Bool]]()
    func solution(_ board:[[Int]]) -> Int {
        rCount = board.count
        cCount = board[0].count
        b = board
//        var length = min(rCount, cCount)
//        while length > 0 {
//            for r in 0...(rCount-length) {
//                for c in 0...(cCount-length) {
//                    if check(x: r, y: c, length: length) {
//                        return length*length
//                    }
//                }
//            }
//            length -= 1
//        }
//        return length*length
//
//        visited = [[Bool]](repeating: [Bool](repeating: false, count: cCount), count: rCount)
//        var max = 0
//        for r in 0..<rCount {
//            for c in 0..<cCount {
//                if !visited[r][c] && board[r][c] == 1 {
//                    let temp = check2(r: r, c: c)
//                    if max < temp {
//                        print(r,c)
//                        max = temp
//                    }
//                }
//            }
//        }
//        return max*max
        /**
         효율성 계속 통과 안됐었는데 알고보니 DP로 풀어야한다는 글 보고 수정,,
         */
        var maxNum = 0
        guard rCount >= 2 && cCount >= 2 else {
            return board.map({$0.max()!}).max()!
        }
        for r in 1..<rCount {
            for c in 1..<cCount where b[r][c] != 0 {
                b[r][c] += min(b[r-1][c-1], b[r-1][c], b[r][c-1])
                maxNum = max(maxNum, b[r][c])
            }
        }
        return maxNum*maxNum
    }
    func check2(r: Int, c: Int) -> Int {
        visited[r][c] = true
        var max = 2
        while r+max <= rCount && c+max <= cCount {
            for i in 0..<max {
                if b[r+i][c+max-1]*b[r+max-1][c+i] != 1 {
                    return max - 1
                }
            }
//            visited[r][c+max-1] = true
            print("asdf",r,c)
//            (0..<max).forEach({
//                visited[r+$0][c+max-1] = true
//                visited[r+max-1][c+$0] = true
//            })
            max += 1
        }
        return max - 1
    }
    
    func check(x: Int, y: Int, length: Int) -> Bool {
        for r in x..<x+length {
            for c in y..<y+length {
                if b[r][c] == 0 {
                    return false
                }
            }
        }
        return true
    }
}
