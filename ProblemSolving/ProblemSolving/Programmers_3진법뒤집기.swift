//
//  Programmers_3진법뒤집기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/07.
//

import Foundation

/**
 자연수 n이 매개변수로 주어집니다. n을 3진법 상에서 앞뒤로 뒤집은 후, 이를 다시 10진법으로 표현한 수를 return 하도록 solution 함수를 완성해주세요.
 n    result
 45    7
 125    229
 */

class Programmers_3진법뒤집기 {
    func solution(_ n:Int) -> Int {
        var a = n
        var flag = 1
        var result = 0
        while a != 0 {
            result += (a % 3) * flag
            flag *= 10
            a /= 3
        }
        var arr = [Int]()
        while result != 0 {
            arr.append(result % 10)
            result /=  10
        }
        var x = 1
        return arr.reversed().reduce(0, {
            let temp = $0 + $1 * x
            x *= 3
            return temp
        })
        /*
         간단한 풀이....ㅜ
         let flipToThree = String(n,radix: 3)
         let answer = Int(String(flipToThree.reversed()),radix:3)!
         return answer
         */
    }
}

