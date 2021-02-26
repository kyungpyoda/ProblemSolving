//
//  Programmers_순위검색.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/05.
//

import Foundation

class Programmers_순위검색 {
    func solution(_ info:[String], _ query:[String]) -> [Int] {
        let infos = info.map({$0.split(separator: " ").map{[String($0), "-"]}})
//        var a = (1, 2)
//        let noCare = "-"
//        return query.map({
//            let q = $0.split(separator: " ").filter({$0 != "and"})
//            return infos.filter({
//                return ($0[0] == q[0] || q[0] == noCare)
//                    && ($0[1] == q[1] || q[1] == noCare)
//                    && ($0[2] == q[2] || q[2] == noCare)
//                    && ($0[3] == q[3] || q[3] == noCare)
//                    && (Int($0[4])! >= Int(q[4])!)
//            }).count
//        })
        var dict: [[String]: [Int]] = [:]
        for i in infos {
            for a in i[0] {
                for b in i[1] {
                    for c in i[2] {
                        for d in i[3] {
                            print([a,b,c,d])
                            dict[[a,b,c,d]] = (dict[[a,b,c,d]] ?? []) + [Int(i[4][0])!]
                        }
                    }
                }
            }
        }
        for key in dict.keys {
            dict[key]?.sort(by: <)
        }
        return query.map {
            let q = $0.split(separator: " ").filter({$0 != "and"}).map({String($0)})
            guard let scores = dict[Array(q[0...3])] else { return 0 }
            let minScore = Int(q[4])!
            return binarySearch(array: scores, target: minScore)
        }
    }
    
    func binarySearch(array: [Int], target: Int) -> Int {
        var low = 0
        var high = array.count - 1
        // 1 -> 7
        // 2 -> 7
        // 3 -> 6
        // 4 -> 5
        // 5 -> 5
        // 6 -> 4
        // 7 -> 3
        // 8 -> 2
        // 9 -> 1
        // 10 -> 0
        // 2 3 5 6 7 8 9
        guard array[high] >= target else { return 0 }
        guard array[low] < target else { return array.count }
        while low <= high {
            var mid = (low + high) / 2
            let guess = array[mid]
            if guess == target {
                while mid > 0 && array[mid-1] == guess {
                    mid -= 1
                }
                return array.count - mid
            } else if guess > target {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        return array.count - low
    }
}
