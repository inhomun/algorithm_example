//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
    var answer = Array(repeating: Int.max, count: y+1)
    answer[x] = 0
    for i in x...y where answer[i] != Int.max {
        if i+n <= y {
        answer[i+n] = min(answer[i] + 1, answer[i+n])
        }
        if i*2 <= y {
        answer[i*2] = min(answer[i] + 1, answer[i*2])
        }
        if i*3 <= y {
            answer[i*3] = min(answer[i] + 1, answer[i*3])
        }
    }
    if answer[y] == Int.max {
        return -1
    }
    else {
        return answer[y]
    }
}
