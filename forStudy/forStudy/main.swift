//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ n:Int) -> Int {
    var answer = 0
    for i in 1...100 {
        if ( i * 6 ) % n == 0 {
            answer = i
            break
        }
        else {
            continue
        }
    }
    return answer
}
