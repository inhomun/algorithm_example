//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ n:Int) -> String {
    var answer = ""
    for i in 0..<n {
        if i % 2 == 0 {
            answer += "수"
        }
        else {
            answer += "박"
        }
    }
    return answer
}
