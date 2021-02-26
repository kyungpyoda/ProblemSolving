//
//  Programmers_[3차]방금그곡.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/25.
//

import Foundation

class Programmers_방금그곡 {
    func solution(_ m:String, _ musicinfos:[String]) -> String {
        var answer = [(Int, String)]()
        var newM = [Character]()
        for c in m {
            if c == "#" { newM.append(Character(newM.popLast()!.lowercased()))
            } else {
                newM.append(c)
            }
        }
        let target = String(newM.compactMap({$0}))
        for info in musicinfos {
            let inf = info.split(separator: ",").map({String($0)})
            let start = inf[0].split(separator: ":")
            let end = inf[1].split(separator: ":")
            let totalMusicLength = (Int(end[0])! - Int(start[0])!) * 60 + (Int(end[1])! - Int(start[1])!)
            var newMusic = [Character]()
            for c in inf[3] {
                if c == "#" { newMusic.append(Character(newMusic.popLast()!.lowercased()))
                } else {
                    newMusic.append(c)
                }
            }
            let musicLength = newMusic.count
            let totalMusic = (0..<totalMusicLength).map {
                newMusic[$0 % musicLength]
            }
            if String(totalMusic).contains(target) {
                answer.append((totalMusicLength, inf[2]))
            }
        }
        guard !answer.isEmpty else { return "(None)" }
        return answer.enumerated().sorted(by: { (l, r) -> Bool in
            return l.element.0 == r.element.0 ? l.offset < r.offset : l.element.0 > r.element.0
        })[0].element.1
    }
}
