//
//  Programmers_자물쇠와열쇠.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/17.
//

import Foundation

class Programmers_자물쇠와열쇠 {
    var M = 0
    var N = 0
    func solution(_ key:[[Int]], _ lock:[[Int]]) -> Bool {
        M = key.count
        N = lock.count
        for rMove in 1-M...N-1 {
            for cMove in 1-M...N-1 {
                var key = key
                if unlock(key: key, lock: lock, rMove: rMove, cMove: cMove) {
                    return true
                }
                key = rotate(arr: key)
                if unlock(key: key, lock: lock, rMove: rMove, cMove: cMove) {
                    return true
                }
                key = rotate(arr: key)
                if unlock(key: key, lock: lock, rMove: rMove, cMove: cMove) {
                    return true
                }
                key = rotate(arr: key)
                if unlock(key: key, lock: lock, rMove: rMove, cMove: cMove) {
                    return true
                }
            }
        }
        return false
    }
    func unlock(key: [[Int]], lock: [[Int]], rMove: Int, cMove: Int) -> Bool {
        for r in 0..<lock.count {
            for c in 0..<lock.count {
                let k = (0..<M ~= r-rMove && 0..<M ~= c-cMove) ? key[r-rMove][c-cMove] : 0
                guard lock[r][c] ^ k == 1 else { return false }
            }
        }
        return true
    }
    func rotate(arr: [[Int]]) -> [[Int]] {
        let rCount = arr.count
        let cCount = arr[0].count
        return (0..<cCount).map { c in
            (0..<rCount).map { r in
                arr[r][c]
            }.reversed()
        }
    }
}
