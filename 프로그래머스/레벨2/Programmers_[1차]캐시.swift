//
//  Programmers_[1차]캐시.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/14.
//

import Foundation

class Programmers_캐시 {
    func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
        var answer = 0
        var cache = Queue<String>(size: cacheSize)
        for city in cities {
            let a = city.lowercased()
            if let c = cache.remove(item: a) {
                cache.enqueue(item: c)
                answer += 1
            } else {
                cache.enqueue(item: a)
                answer += 5
            }
        }
        return answer
    }
    struct Queue<T: Equatable> {
        init(size: Int) {
            limit = size
        }
        let limit: Int
        var list: [T] = []
        mutating func enqueue(item: T) {
            guard limit != 0 else { return }
            if list.count == limit {
                list.removeFirst()
            }
            list.append(item)
        }
        mutating func dequeue() -> T? {
            guard !list.isEmpty else { return nil }
            return list.removeFirst()
        }
        mutating func remove(item: T) -> T? {
            guard let index = list.firstIndex(of: item) else {
                return nil
            }
            list.remove(at: index)
            return item
        }
    }
}
