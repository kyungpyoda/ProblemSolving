//
//  BOJ_7576.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/03/03.
//

import Foundation

class BOJ_7576 {
    func solution() -> Int {
        var box = [[Int]]()
        let input = readLine()!.split(separator: " ").map {
            Int($0)!
        }
        let M = input[0]
        let N = input[1]
        var q = Queue<[Int]>()
        (0..<N).forEach { row in
            box.append(readLine()!.split(separator: " ").map {
                Int($0)!
            })
        }
        for i in 0..<N {
            for j in 0..<M {
                if box[i][j] == 1 {
                    q.enqueue(item: [i,j])
                }
            }
        }
        var x = 0
        while !q.isEmpty {
            x += 1
            for _ in 0..<q.count {
                let temp = q.dequeue()!
                if temp[0] != 0 && box[temp[0]-1][temp[1]] == 0 {
                    box[temp[0]-1][temp[1]] = box[temp[0]][temp[1]] + 1
                    q.enqueue(item: [temp[0]-1, temp[1]])
                }
                if temp[0] != N-1 && box[temp[0]+1][temp[1]] == 0 {
                    box[temp[0]+1][temp[1]] = box[temp[0]][temp[1]] + 1
                    q.enqueue(item: [temp[0]+1, temp[1]])
                }
                if temp[1] != 0 && box[temp[0]][temp[1]-1] == 0 {
                    box[temp[0]][temp[1]-1] = box[temp[0]][temp[1]] + 1
                    q.enqueue(item: [temp[0], temp[1]-1])
                }
                if temp[1] != M-1 && box[temp[0]][temp[1]+1] == 0 {
                    box[temp[0]][temp[1]+1] = box[temp[0]][temp[1]] + 1
                    q.enqueue(item: [temp[0], temp[1]+1])
                }
            }
        }
        for r in box {
            guard !r.contains(0) else { return -1 }
        }
        return x-1
    }
    
}
struct Queue<T> {
    var list: [T] = []
    var rList: [T] = []
    var isEmpty: Bool {
        return list.isEmpty && rList.isEmpty
    }
    var count: Int {
        return list.count + rList.count
    }
    mutating func enqueue(item: T) {
        list.append(item)
    }
    mutating func dequeue() -> T? {
        if rList.isEmpty {
            rList = list.reversed()
            list.removeAll()
        }
        return rList.popLast()
    }
}
