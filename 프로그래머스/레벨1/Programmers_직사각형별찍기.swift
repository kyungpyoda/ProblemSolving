//
//  Programmers_직사각형별찍기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_직사각형별찍기 {
    func solution() {
        let input = readLine()!.split(separator: " ").map({Int($0)!})
        for _ in 0..<input[1] {
            print(String(repeating: "*", count: input[0]))
        }
    }
}
