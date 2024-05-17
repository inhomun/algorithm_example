//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var cntA = Array(repeating: 0, count: 10)
    var cntB = Array(repeating: 0, count: 10)
    for i in X {
        cntA[Int(String(i))!] += 1
    }
    for j in Y {
        cntB[Int(String(j))!] += 1
    }
    var answer = ""
    for k in stride(from: 9, through: 0, by: -1)  {
        let minVal = min(cntA[k], cntB[k])
        if minVal > 0 {
            for _ in 0..<minVal {
               answer += String(k)
            }
        }
    }
    if answer == "" {
        return "-1"
    }
    else if answer.first == "0" {
        return "0"
    }
    else {
        return answer
    }
}
