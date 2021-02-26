//
//  BOJ_1916.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/20.
//

import Foundation

class BOJ_1916 {
    var n: Int!
    var m: Int!
    
    var a: Int!
    var b: Int!
    var map: [[Int]] = [[]]
    var visited: [Bool] = []
    var d: [Int] = []
    
    init() {
        n = Int(readLine()!)!
        m = Int(readLine()!)!
        map = [[Int]](repeating: [Int](repeating: Int.max, count: n), count: n)
        for _ in 0..<m {
            let input = readLine()!.split(separator: " ").map({Int($0)!})
            map[input[0] - 1][input[1] - 1] = map[input[0] - 1][input[1] - 1] == -1 ? input[2] : min(map[input[0] - 1][input[1] - 1], input[2])
        }
        
        let input = readLine()!.split(separator: " ").map({Int($0)!})
        a = input[0]
        b = input[1]
    }
    
    func dijkstra() -> Int {
        let start = a - 1
        let end = b - 1
        visited = [Bool](repeating: false, count: n)
        d = (0..<n).map { map[start][$0] }
        visited[start] = true
        for _ in 0..<n-1 {
            let current = mostCloseIndex()
            visited[current] = true
            for i in 0..<n where i != current && !visited[i] {
                if map[current][i] < d[i] - d[current] { //d[current] + map[current] < d[i] 이 식에서 정수 최댓값을 넘지 않게 하려고
                    d[i] = map[current][i] + d[current]
                }
            }
        }
        return d[end]
    }
    
    func mostCloseIndex() -> Int {
        var index = 0
        var min = Int.max
        for (i, t) in d.enumerated() {
            if t < min && !visited[i] {
                min = t
                index = i
            }
        }
        return index
    }
}
