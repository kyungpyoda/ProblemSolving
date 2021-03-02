//
//  Programmers_방문길이.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/03/03.
//

import Foundation

class Programmers_방문길이 {
    func solution(_ dirs:String) -> Int {
        var answer = 0
        var current = (x: 0, y: 0)
        var set = Set<Coord>()
        for c in dirs {
            let next: (x: Int, y: Int)
            switch c {
            case "U":
                next = (current.x, current.y+1)
            case "D":
                next = (current.x, current.y-1)
            case "R":
                next = (current.x+1, current.y)
            case "L":
                next = (current.x-1, current.y)
            default:
                continue
            }
            guard abs(next.x) <= 5 && abs(next.y) <= 5 else {
                continue
            }
            let temp = Coord(x: Double(next.x + current.x) / 2.0, y: Double(next.y + current.y) / 2.0)
            if !set.contains(temp) {
                set.insert(temp)
                answer += 1
            }
            current = next
        }
        return answer
    }
    struct Coord: Hashable {
        var x: Double
        var y: Double
    }
}
