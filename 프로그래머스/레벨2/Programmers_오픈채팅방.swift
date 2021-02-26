//
//  Programmers_오픈채팅방.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/26.
//

import Foundation

class Programmers_오픈채팅방 {
    func solution(_ record:[String]) -> [String] {
        var dict: [String: String] = [:]
        var result: [(Bool, String)] = []
        for r in record {
            let input = r.split(separator: " ").map({String($0)})
            switch input[0] {
            case "Enter":
                dict[input[1]] = input[2]
                result.append((true, input[1]))
            case "Leave":
                result.append((false, input[1]))
            case "Change":
                dict[input[1]] = input[2]
            default:
                break
            }
        }
        return result.map {
            "\(dict[$0.1]!)님이 \($0.0 ? "들어왔습니다": "나갔습니다")."
        }
    }
}
