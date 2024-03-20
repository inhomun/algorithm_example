//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
func solution(_ num:Int) -> Int {
    var answer = 0
    var a = num
    repeat {
        if a == 1 {
            return 0
        }
        else if a % 2 == 0 {
            a /= 2
        }
        else {
            a = a * 3 + 1
        }
        answer += 1
        if answer >= 500 {
            return -1
        }
    } while a != 1
    return answer
}
