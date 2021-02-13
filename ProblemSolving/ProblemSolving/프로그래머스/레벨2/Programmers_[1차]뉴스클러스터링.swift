//
//  Programmers_[1차]뉴스클러스터링.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/14.
//

import Foundation

class Programmers_뉴스클러스터링 {
    func solution(_ str1:String, _ str2:String) -> Int {
        var count1 = 0
        var count2 = 0
        var dict1 = [String: Int]()
        var dict2 = [String: Int]()
        var keys = Set<String>()
        for i in 0..<str1.count-1 {
            let index = str1.index(str1.startIndex, offsetBy: i)
            let c1 = str1[index]
            let c2 = str1[str1.index(after: index)]
            guard c1.isLetter && c2.isLetter else { continue }
            dict1["\(c1.lowercased())\(c2.lowercased())"] = (dict1["\(c1.lowercased())\(c2.lowercased())"] ?? 0) + 1
            keys.insert("\(c1.lowercased())\(c2.lowercased())")
            count1 += 1
        }
        for i in 0..<str2.count-1 {
            let index = str2.index(str2.startIndex, offsetBy: i)
            let c1 = str2[index]
            let c2 = str2[str2.index(after: index)]
            guard c1.isLetter && c2.isLetter else { continue }
            dict2["\(c1.lowercased())\(c2.lowercased())"] = (dict2["\(c1.lowercased())\(c2.lowercased())"] ?? 0) + 1
            keys.insert("\(c1.lowercased())\(c2.lowercased())")
            count2 += 1
        }
        let total = count1 + count2
        guard total != 0 else { return 65536 }
        let temp = keys.reduce(0, {
            $0 + min(dict1[$1] ?? 0, dict2[$1] ?? 0)
        })
        return Int(Double(temp) / Double(total-temp) * 65536)
    }
}

