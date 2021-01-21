//
//  Programmers_키패드누르기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_키패드누르기 {
    func solution(_ numbers:[Int], _ hand:String) -> String {
        var answer = ""
        let hand = hand == "right" ? "R" : "L"
        var finger: [String: (Int, Int)] = [:]
        finger["L"] = (1, 3)
        finger["R"] = (1, 3)
        for num in numbers {
            switch num {
            case 1, 4, 7:
                answer += "L"
                finger["L"] = (1, num / 3)
            case 3, 6, 9:
                answer += "R"
                finger["R"] = (1, num / 3 - 1)
            default:
                let i = num == 0 ? 3 : num / 3
                let l = abs(i - finger["L"]!.1) + finger["L"]!.0
                let r = abs(i - finger["R"]!.1) + finger["R"]!.0
                let temp = l == r ? hand : l < r ? "L" : "R"
                finger[temp] = (0, i)
                answer += temp
            }
        }
        return answer
    }
    
//    func solution(_ numbers:[Int], _ hand:String) -> String {
//        var answer: String = ""
//
//        var leftPosition: (Int, Int) = (3, 1)
//        var rightPosition: (Int, Int) = (3, 1)
//        for n in numbers {
//            switch n {
//            case 1, 4, 7:
//                answer += "L"
//                leftPosition = (n / 3, 1)
//            case 3, 6, 9:
//                answer += "R"
//                rightPosition = (n / 3 - 1, 1)
//            default:
//                let p = ((n == 0 ? 3 : n / 3), 0)
//                let diffL = abs(p.0 - leftPosition.0) + leftPosition.1 - p.1
//                let diffR = abs(p.0 - rightPosition.0) + rightPosition.1 - p.1
//                if diffL > diffR {
//                    answer += "R"
//                    rightPosition = p
//                } else if diffL < diffR {
//                    answer += "L"
//                    leftPosition = p
//                } else {
//                    if hand == "left" {
//                        answer += "L"
//                        leftPosition = p
//                    } else {
//                        answer += "R"
//                        rightPosition = p
//                    }
//                }
//            }
//        }
//
//        return answer
//    }
}
