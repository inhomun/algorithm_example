//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var visited = Array(repeating: false, count: dungeons.count)
    var answer = [Int]()
    func dfs (_ step: Int,_ k: Int) {
        if step == dungeons.count || k == 0{
            answer.append(step)
            return
        }
        for (idx,i) in dungeons.enumerated() where !visited[idx] {
            if k >= i[0] {
                visited[idx] = true
                dfs(step + 1, k - i[1])
                visited[idx] = false
            }
        }
        answer.append(step)
        return
    }
    dfs(0, k)
    return answer.max()!
}
