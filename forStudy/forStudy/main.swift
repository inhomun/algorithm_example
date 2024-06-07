//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ n:Int) -> [Int] {
    var snail = Array( repeating: Array(repeating: 0, count: n), count: n)
    var x = -1
    var y = 0
    var val = 0
    var answer = [Int]()
    for i in 0..<n {
        for _ in i..<n {
            if i % 3 == 0 {
                x += 1
            }
            else if i % 3 == 1 {
                y += 1
            }
            else {
                x -= 1
                y -= 1
            }
            val += 1
            snail[x][y] = val
        }
    }
    for i in 0..<snail.count {
        let arr = snail[i].filter{ $0 != 0}
        answer += arr
    }
    return answer
}
