//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
func solution(_ phone_number:String) -> String {
    var answer = ""
    for (idx, i) in phone_number.enumerated() {
        if idx < phone_number.count - 4 {
            answer += "*"
        }
        else {
            answer += "\(i)"
        }
    }
    return answer
}
