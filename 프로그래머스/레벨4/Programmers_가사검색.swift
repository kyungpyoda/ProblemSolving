//
//  Programmers_가사검색.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/18.
//

import Foundation

class Programmers_가사검색 {
    class TrieNode<T: Hashable> {
        var value: T?
        weak var parent: TrieNode?
        var children: [T : TrieNode] = [:]
        var count = 0
        
        init(value: T? = nil, parent: TrieNode? = nil) {
            self.value = value
            self.parent = parent
        }
        func add(child: T) {
            guard children[child] == nil else { return }
            children[child] = TrieNode(value: child, parent: self)
        }
    }
    class Trie {
        typealias Node = TrieNode<Character>
        let root: Node
        
        init() {
            root = Node()
        }
        
        func insert(word: String) {
            guard !word.isEmpty else { return }
            var currentNode = root
            
            for character in word.lowercased() {
                currentNode.count += 1
                if let child = currentNode.children[character] {
                    currentNode = child
                } else {
                    currentNode.add(child: character)
                    currentNode = currentNode.children[character]!
                }
            }
        }
        
        func count(s: String) -> Int {
            var currentNode = root
            for c in s {
                guard c != "?" else {
                    return currentNode.count
                }
                guard let child = currentNode.children[c] else { return 0 }
                currentNode = child
            }
            return 0
        }
    }
    
    func solution(_ words:[String], _ queries:[String]) -> [Int] {
        var tries: [Int: Trie] = [:]
        var reversedTries: [Int: Trie] = [:]
        
        for word in words {
            if tries[word.count] == nil {
                tries[word.count] = Trie()
                reversedTries[word.count] = Trie()
            }
            tries[word.count]?.insert(word: word)
            reversedTries[word.count]?.insert(word: String(word.reversed()))
        }
        
        return queries.map {
            if $0.first == "?" {
                guard let trie = reversedTries[$0.count] else {
                    return 0
                }
                return trie.count(s: String($0.reversed()))
            } else {
                guard let trie = tries[$0.count] else {
                    return 0
                }
                return trie.count(s: $0)
            }
        }
    }
}
