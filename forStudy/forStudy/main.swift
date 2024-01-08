//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var answer = 0
    for i in left...right {
        var tmp = 0
        for j in 1...i {
            if i % j == 0 {
                tmp += 1
            }
        }
        if tmp % 2 == 0 {
                answer += i
            }
            else {
                answer -= i
            }
    }
    return answer
}
