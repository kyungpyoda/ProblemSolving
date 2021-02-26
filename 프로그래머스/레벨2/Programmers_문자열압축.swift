//
//  Programmers_문자열압축.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/28.
//

import Foundation

class Programmers_문자열압축 {
    func solution(_ s:String) -> Int {
        let n = s.count
        guard n > 2 else { return n }
        var min = n
        for i in 1...(n/2) {
            var offset = 0
            var str = ""
            var tempStr = ""
            var tempNum = 1
            while offset < n {
                let start = s.index(s.startIndex, offsetBy: offset)
                guard let end = s.index(start, offsetBy: i, limitedBy: s.endIndex) else {
                    str += (tempNum > 1 ? "\(tempNum)" : "") + tempStr + String(s[start..<s.endIndex])
                    break
                }
                if String(s[start..<end]) == tempStr {
                    tempNum += 1
                } else {
                    str += (tempNum > 1 ? "\(tempNum)" : "") + tempStr
                    tempNum = 1
                    tempStr = String(s[start..<end])
                }
                offset += i
            }
            if offset >= n {
                str += (tempNum > 1 ? "\(tempNum)" : "") + tempStr
            }
            let tempCount = str.count
            if tempCount < min {
                min = tempCount
            }
        }
        return min
    }
}
