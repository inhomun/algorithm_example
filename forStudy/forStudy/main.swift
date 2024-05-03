//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ n:Int) -> [[Int]] {
    var answer = [[Int]]()
    func hanoi (_ count: Int,_ start: Int,_ end: Int) {
        if count == 1 {
            answer.append([start, end])
            return
        }

            hanoi(count-1, start, 6 - start - end)
            hanoi(1, start, end)
            hanoi(count-1, 6 - start - end , end)
    }
    hanoi(n, 1, 3)
    return answer
}
