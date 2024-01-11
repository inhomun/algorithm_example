//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ my_string:String) -> String {
    var answer = ""
    for i in my_string {
        if answer.contains(i) {
            continue
        }
        else {
            answer.append(i)
        }
        
    }
    return answer
}
