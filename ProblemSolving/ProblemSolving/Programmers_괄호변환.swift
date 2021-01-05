//
//  Programmers_괄호변환.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/04.
//

import Foundation

/**
 1. 입력이 빈 문자열인 경우, 빈 문자열을 반환합니다.
 2. 문자열 w를 두 "균형잡힌 괄호 문자열" u, v로 분리합니다. 단, u는 "균형잡힌 괄호 문자열"로 더 이상 분리할 수 없어야 하며, v는 빈 문자열이 될 수 있습니다.
 3. 문자열 u가 "올바른 괄호 문자열" 이라면 문자열 v에 대해 1단계부터 다시 수행합니다.
   3-1. 수행한 결과 문자열을 u에 이어 붙인 후 반환합니다.
 4. 문자열 u가 "올바른 괄호 문자열"이 아니라면 아래 과정을 수행합니다.
   4-1. 빈 문자열에 첫 번째 문자로 '('를 붙입니다.
   4-2. 문자열 v에 대해 1단계부터 재귀적으로 수행한 결과 문자열을 이어 붙입니다.
   4-3. ')'를 다시 붙입니다.
   4-4. u의 첫 번째와 마지막 문자를 제거하고, 나머지 문자열의 괄호 방향을 뒤집어서 뒤에 붙입니다.
   4-5. 생성된 문자열을 반환합니다.
 
 p                  result
 "(()())()"         "(()())()"
 ")("               "()"
 "()))((()"         "()(())()"
 */
class Programmers_괄호변환 {
    func solution(_ p:String) -> String {
        guard !p.isEmpty else { return "" }
        var flag = 0
        var uIndex = 0
        for (index, c) in p.enumerated() {
            if c == "(" {
                flag += 1
            } else {
                flag -= 1
            }
            if flag == 0 {
                uIndex = index
                break
            }
        }
        
        var u = String(p[p.startIndex...p.index(p.startIndex, offsetBy: uIndex)])
        let v = String(p[p.index(after: p.index(p.startIndex, offsetBy: uIndex))..<p.endIndex])
        guard !isValid(u) else {
            return "\(u)\(solution(v))"
        }
        u = String(u.dropFirst())
        u = String(u.dropLast())
        u = flip(u)
        return "(\(solution(v)))\(u)"
    }
    func flip(_ u: String) -> String {
        var result = ""
        for i in u {
            if i == "(" {
                result += ")"
            } else {
                result += "("
            }
        }
        return result
    }
    func isValid(_ u: String) -> Bool {
        var flag = 0
        for i in u {
            if i == "(" {
                flag += 1
            } else {
                flag -= 1
            }
            guard flag >= 0 else { return false }
        }
        return flag == 0 ? true : false
    }
}
