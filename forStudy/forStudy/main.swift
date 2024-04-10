//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ n:Int) -> Int {
    var arr = [Int]()
    for i in 0..<n {
        if i == 0 {
            arr.append(1)
        }
        else if i == 1 {
            arr.append(1)
        }
        else if i == 2 {
            arr.append(2)
        }
        else {
            arr.append((arr[i-2] + arr[i-1]) % 1234567)
        }
    }
    var answer = arr.popLast()!
    return answer
}
