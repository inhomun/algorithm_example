//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ strArr:[String]) -> [String] {
    var answer = [String]()
    for i in strArr {
        if i.contains("ad") {
            continue
        }
        else {
            answer.append(i)
        }
    }
    return answer
}
