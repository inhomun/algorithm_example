//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ n:Int, _ wires:[[Int]]) -> Int {
    var tree = [Int:[Int]]()
    var answer = [Int]()
    for wire in wires {
        tree[wire[0], default: []].append(wire[1])
        tree[wire[1], default: []].append(wire[0])
    }
    func dfs(_ start: Int) -> Int {
        var queue = [start]
        var cnt = 0
        while !queue.isEmpty {
            var node = queue.removeFirst()
            visited[node] = true
            cnt += 1
            for i in tree[node]! where !visited[i] {
                queue.append(i)
            }
        }
        return cnt
    }
    var visited = Array(repeating: false, count: n + 1)
    let result = dfs(1)
    for i in 1...n {
        visited = Array(repeating: false, count: n + 1)
        visited[i] = true
        let count = dfs(1)
        answer.append(abs(count - (result - count)))
    }
    return answer.min()!
}
