//
//  Programmers_[3차]파일명정렬.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/26.
//

import Foundation

class Programmers_파일명정렬 {
    func solution(_ files:[String]) -> [String] {
        return files.enumerated().sorted { (left, right) -> Bool in
            let ls = left.element
            let rs = right.element
            var numberCount = 0
            var leftHead = ""
            var rightHead = ""
            var leftNumber = ""
            var rightNumber = ""
            for c in ls {
                if !c.isNumber && numberCount == 0 {
                    leftHead += c.lowercased()
                } else if c.isNumber && numberCount < 5 {
                    leftNumber += String(c)
                    numberCount += 1
                } else {
                    break
                }
            }
            numberCount = 0
            for c in rs {
                if !c.isNumber && numberCount == 0 {
                    rightHead += c.lowercased()
                } else if c.isNumber && numberCount < 5 {
                    rightNumber += String(c)
                    numberCount += 1
                } else {
                    break
                }
            }
            if leftHead != rightHead {
                return leftHead < rightHead
            } else if Int(leftNumber)! != Int(rightNumber)! {
                return Int(leftNumber)! < Int(rightNumber)!
            } else {
                return left.offset < right.offset
            }
        }.map {
            $0.element
        }
    }
}
