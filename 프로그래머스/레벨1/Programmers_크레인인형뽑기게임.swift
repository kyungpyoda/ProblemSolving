//
//  Programmers_크레인인형뽑기게임.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/15.
//

import Foundation

/**
 프로그래머스 크레인 인형뽑기 게임
 입출력 예
 board    moves    result
 [[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]]    [1,5,3,5,1,2,1,4]    4
 입출력 예에 대한 설명
 입출력 예 #1
 인형의 처음 상태는 문제에 주어진 예시와 같습니다. 크레인이 [1, 5, 3, 5, 1, 2, 1, 4] 번 위치에서 차례대로 인형을 집어서 바구니에 옮겨 담은 후, 상태는 아래 그림과 같으며 바구니에 담는 과정에서 터트려져 사라진 인형은 4개 입니다.
 */
class Programmers_크레인인형뽑기게임 {
    func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
        var count = 0
        var bucket: [Int] = []
        var filteredBoard: [[Int]] = (0..<board.count).map { c in
            (0..<board.count).map { r in
                board[r][c]
            }.filter {
                $0 != 0
            }.reversed()
        }
        for move in moves {
            guard let picked = filteredBoard[move - 1].popLast() else { continue }
            if picked == bucket.last {
                bucket.popLast()
                count += 2
            } else {
                bucket.append(picked)
            }
        }
        return count
    }
}
