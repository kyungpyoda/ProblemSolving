//
//  Programmers_불량사용자.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/17.
//

import Foundation

class Programmers_불량사용자 {
    var dict: [String: Set<String>] = [:]
    var bannedIds: [String] = []
    var bannedSet: Set<Set<String>> = []
    func solution(_ user_id:[String], _ banned_id:[String]) -> Int {
        bannedIds = banned_id
        for banned in banned_id {
            user_id.forEach {
                if isBanned(bannedId: banned, userId: $0) {
                    var set = dict[banned] ?? []
                    set.insert($0)
                    dict[banned] = set
                }
            }
        }
        comb(currentIndex: 0, set: [])
        return bannedSet.count
    }
    func isBanned(bannedId: String, userId: String) -> Bool {
        guard bannedId.count == userId.count else { return false }
        for (b, u) in zip(bannedId, userId) {
            guard b == "*" || b == u else { return false }
        }
        return true
    }
    func comb(currentIndex: Int, set: Set<String>) {
        if currentIndex == bannedIds.count {
            bannedSet.insert(set)
        } else {
            for u in dict[bannedIds[currentIndex]] ?? [] {
                if !set.contains(u) {
                    var newSet = set
                    newSet.insert(u)
                    comb(currentIndex: currentIndex+1, set: newSet)
                }
            }
        }
    }
}
