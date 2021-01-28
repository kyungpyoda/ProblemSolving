//
//  Programmers_삼각달팽이.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/28.
//

import Foundation

class Programmers_삼각달팽이 {
    func solution(_ n:Int) -> [Int] {
        var map = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
        var r = 0
        var c = 0
        var temp = 0
        for i in 0..<n {
            switch i % 3 {
            case 0:
                for j in 1...n-i {
                    map[r][c] = temp + j
                    r += 1
                }
                r -= 1
                c += 1
            case 1:
                for j in 1...n-i {
                    map[r][c] = temp + j
                    c += 1
                }
                r -= 1
                c -= 2
            case 2:
                for j in 1...n-i {
                    map[r][c] = temp + j
                    r -= 1
                    c -= 1
                }
                r += 2
                c += 1
            default:
                break
            }
            temp += n-i
        }
        return map.flatMap {
            $0.filter {
                $0 != 0
            }
        }
    }
}
