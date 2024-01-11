//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
func solution(_ seoul:[String]) -> String {
    var answer = 0
    for (idx, i) in seoul.enumerated() {
        if i == "Kim" {
            answer = idx
        }
    }
    return "김서방은 \(answer)에 있다"
}
