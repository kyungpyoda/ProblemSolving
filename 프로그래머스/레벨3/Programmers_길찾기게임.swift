//
//  Programmers_길찾기게임.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/26.
//

import Foundation

class Programmers_길찾기게임 {
    class Node {
        let num: Int
        let coordinate: (x: Int, y: Int)
        var leftChildNode: Node?
        var rightChildNode: Node?
        init(num: Int, coordinate: (Int, Int)) {
            self.num = num
            self.coordinate = coordinate
        }
        
    }
    class Tree {
        var root: Node?
        var count = 0
        func insert(num: Int, coordinate: (Int, Int)) {
            self.count += 1
            let node = Node(num: num, coordinate: coordinate)
            guard var current = root else {
                self.root = node
                return
            }
            while true {
                guard (current.coordinate.x < node.coordinate.x && current.rightChildNode != nil) || (current.coordinate.x > node.coordinate.x && current.leftChildNode != nil) else {
                    if current.coordinate.x < node.coordinate.x {
                        current.rightChildNode = node
                    } else {
                        current.leftChildNode = node
                    }
                    return
                }
                current = current.coordinate.x < node.coordinate.x ? current.rightChildNode! : current.leftChildNode!
            }
        }
        func preorder(current: Node?) -> [Int] {
            guard let current = current else { return [] }
            var result: [Int] = []
            result.append(current.num)
            result += preorder(current: current.leftChildNode)
            result += preorder(current: current.rightChildNode)
            return result
        }
        func postorder(current: Node?) -> [Int] {
            guard let current = current else { return [] }
            var result: [Int] = []
            result += postorder(current: current.leftChildNode)
            result += postorder(current: current.rightChildNode)
            result.append(current.num)
            return result
        }
    }
    func solution(_ nodeinfo:[[Int]]) -> [[Int]] {
        let tree = Tree()
        nodeinfo.enumerated().sorted { (left, right) -> Bool in
            return left.element[1] == right.element[1] ? left.element[0] > right.element[0] : left.element[1] > right.element[1]
        }.forEach({ (i, n) in
            tree.insert(num: i+1, coordinate: (n[0], n[1]))
        })
        return [
            tree.preorder(current: tree.root),
            tree.postorder(current: tree.root)
        ]
    }
}
