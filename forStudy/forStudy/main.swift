//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var b = board
    var answer = 0
    var stack = [Int]()
    for i in moves {
        for j in 0..<b.count {
            if b[j][i-1] == 0 {
                continue
            }
            else {
                if b[j][i-1] == stack.last {
                    stack.removeLast()
                    answer += 2
                }
                else {
                    stack.append(b[j][i-1])
                }
                b[j][i-1] = 0
                break
            }
        }
    }
    return answer
}
