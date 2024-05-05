//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ cards:[Int]) -> Int {
    var visited = Array(repeating: false, count: cards.count + 1)
    var answer = [[Int]]()
    for i in 0..<cards.count {
        var tmp = i
        var cnt = [Int]()
        while !visited[tmp] {
            visited[tmp] = true
            cnt.append(tmp)
            tmp = cards[tmp] - 1
        }
        if cnt.isEmpty {
            continue
        }
        else {
            answer.append(cnt)
        }
    }
    answer.sort { $0.count > $1.count }
    if answer.count == 1 {
        return 0
    }
    else {
        return answer[0].count * answer[1].count
    }
}
